const { Transaction, Op } = require('sequelize');
const { sequelize } = require('../config/connectDB');
const db = require('../models/index');
const RESPONSE = require('../schema/response');
const image = require('../service/image');

const sellerController = {
  async getOwnShops(req, res) {
    const result = await db.Shop.findAll({
      where: {
        ownerId: req.userId
      }
    });
    return res.status(200).send(RESPONSE('Danh sách các gian hàng', 0, result));
  },
  async getDetailShop(req, res) {
    const { idShop } = req.params;
    let { page, size } = req.query;
    page = parseInt(page || 1);
    size = parseInt(size || process.env.SIZE);
    console.log(req.params);
    const result = await db.Shop.findOne({
      where: {
        id: idShop,
        ownerId: req.userId,
      },
      nest: true,
      required: false,
      include: {
        model: db.Item,
        as: 'itemsData',
        attributes: ['name', 'description', 'id', 'quantity', 'price', 'itemTypeId'],
        limit: size,
        offset: (page - 1) * size
        // include: {
        //   model: db.ItemImage,
        //   as: 'itemImageData',
        //   attributes: ['image'],
        // }
      }
    });
    const callSize = await db.Shop.count({
      where: {
        id: idShop,
        ownerId: req.userId,
      },
      nest: true,
      required: false,
      include: {
        model: db.Item,
        as: 'itemsData',
        attributes: ['name', 'description', 'id', 'quantity', 'price', 'itemTypeId'],
      }
    });
    if (!result) {
      return res.status(200).send(RESPONSE('Thông tin không chính xác', -1));
    }
    return res.status(200).send(RESPONSE('Chi tiết về gian hàng', 0, {
      items: result,
      total: callSize,
      totalPage: Math.ceil(callSize / size),
      page,
      size,
    }));
  },
  async addItem(req, res) {
    // const trx = new Transaction();
    const { name, description, price, itemTypeId, images, shopId, quantity } = req.body;
    const newItem = await db.Item.create({
      name,
      price,
      quantity,
      description,
      createdAt: new Date(),
      updatedAt: new Date(),
      shopId,
      //chưa check owner
      itemTypeId,
    });
    return res.status(200).send(RESPONSE('Tạo thêm sản phẩm thành công', 0));
    // try {
    //   const { name, description, price, itemTypeId, images, shopId } = req.body;
    //   const newItem = await db.Item.create({
    //     name,
    //     price,
    //     quantity,
    //     description,
    //     createdAt: new Date(),
    //     updatedAt: new Date(),
    //     shopId,
    //     //chưa check owner
    //     itemTypeId,
    //   }, {
    //     transaction: trx,
    //   });
    //   // images.forEach(async (imageValue) => {
    //   //   if (!image.isImage(imageValue) || image.readSize(imageValue) > 2) {
    //   //     await trx.rollback();
    //   //     return res.status(200).send(RESPONSE('Ảnh không hợp lệ', -1));
    //   //   }
    //   // });
    //   // const newArr = images.map((imageValue) => {
    //   //   return {
    //   //     itemId: newItem,
    //   //     image: image.saveImage(imageValue, 'item'),
    //   //     createdAt: new Date(),
    //   //     updatedAt: new Date(),
    //   //   }
    //   // });
    //   // await db.ItemImage.bulkCreate(newArr, {
    //   //   transaction: trx
    //   // });
    //   // console.log(newArr);
    //   await trx.commit();
    //   return res.status(200).send(RESPONSE('Tạo thêm sản phẩm thành công', 0));

    // } catch (error) {
    //   await trx.rollback();
    //   return res.status(200).send(RESPONSE('có lỗi xảy ra', -1));
    // }
  },
  async removeItem(req, res) {
    //change quantity = - 1, not show and search in client
    const { idItem } = req.params;
    const checkOwn = await db.Item.findOne({
      where: {
        id: idItem,
      },
      required: false,
      include: [
        {
          model: db.Shop,
          as: 'shopData',
          attributes: ['id'],
          where: {
            ownerId: req.userId
          }
        }
      ]
    });

    if (!checkOwn.shopData.id) {
      return res.status(200).send(RESPONSE('Không thể thao tác với sản phẩm', -1));
    }
    await db.Item.update({
      quantity: -1,
    }, {
      where: {
        id: idItem
      }
    });
    return res.status(200).send(RESPONSE('Xóa sản phẩm thành công', -1));
  },
  async updateItem(req, res) {
    // const trx = new Transaction();
    // console.log(123456789);
    // try {
    //   const { idItem } = req.params;
    //   const { name, description, price, quantity, imagesAdd, imagesRemove } = req.body;
    //   const options = {};

    //   const checkOwn = await db.Item.findOne({
    //     where: {
    //       id: idItem,
    //     },
    //     required: false,
    //     include: [
    //       {
    //         model: db.Shop,
    //         as: 'shopData',
    //         attributes: ['id'],
    //         where: {
    //           ownerId: req.userId
    //         }
    //       }
    //     ]
    //   });
    //   console.log(1);

    //   if (!checkOwn.shopData.id) {
    //     return res.status(200).send(RESPONSE('Không thể thao tác với sản phẩm', -1));
    //   }
    //   if (imagesAdd) {
    //     imagesAdd.forEach((imageValue) => {
    //       if (!image.isImage(imageValue) || image.readSize(imageValue) > 2) {
    //         return res.status(200).send(RESPONSE('File ảnh không hợp lệ', -1));
    //       }
    //     });
    //     const newArr = imagesAdd.map((imageValue) => {
    //       return {
    //         itemId: idItem,
    //         image: image.saveImage(imageValue),
    //         createdAt: new Date(),
    //         updatedAt: new Date(),
    //       }
    //     });
    //     await db.ItemImage.bulkCreate(newArr, {
    //       transaction: trx
    //     });
    //   }
    //   if (imagesRemove) {
    //     await db.ItemImage.destroy({
    //       where: {
    //         image: {
    //           [Op.in]: imagesRemove
    //         }
    //       },
    //       transaction: trx
    //     })
    //   }
    //   if (name) options.name = name;
    //   if (description) options.description = description;
    //   if (price) options.price = price;
    //   if (quantity) options.quantity = quantity;
    //   options.updatedAt = new Date();

    //   await db.Item.update(options, {
    //     where: {
    //       id: idItem
    //     },
    //     transaction: trx,
    //   });
    //   await trx.commit();
    //   if (imagesRemove) {
    //     imagesRemove.forEach((imageValue) => {
    //       image.deleteImage(imageValue);
    //     })
    //   }
    //   return res.status(200).send(RESPONSE('Chỉnh sửa thông tin sản phẩm thành công', 0));

    // } catch (error) {
    //   await trx.rollback();
    //   return res.status(200).send(RESPONSE('có lỗi xảy ra', -1));
    // }
    const trx = new Transaction();
    return res.status(200).send(RESPONSE('ok', 0));

  },
  async updateInfoShop(req, res) {
    const { idShop, status, phoneContact, description, shopName, logo } = req.body;
    const options = { updatedAt: new Date() };
    let currentLogo;
    const checkOwn = await db.Shop.findOne({
      where: {
        id: idShop,
        ownerId: req.userId,
      }
    });
    if (!checkOwn) {
      return res.status(200).send(RESPONSE('Không thể cập nhật thông tin gian hàng', -1));
    }
    if (shopName) options.shopName = shopName;
    if (description) options.description = description;
    if (phoneContact) options.phoneContact = phoneContact;
    if (status) {
      if (status !== 'open' && status !== 'close') {
        return res.status(200).send(RESPONSE('trạng thái gian hàng không hợp lệ', -1));
      }
      options.status = status;
    }
    if (logo) {
      if (!image.isImage(logo) || !image.readSize(logo)) {
        return res.status(200).send(RESPONSE('logo gian hàng không hợp lệ', -1));
      }
      currentLogo = checkOwn.logo;
      const newLogo = image.saveImage(logo);
      options.logo = newLogo;
    }
    await db.Shop.update(options, {
      where: {
        id: idShop,
        ownerId: req.userId,
      }
    });
    image.deleteImage(currentLogo);
    return res.status(200).send(RESPONSE('Cập nhật thông tin gian hàng thành công', 0));
  },
  async getListOrder(req, res) {
    const { idShop } = req.params;
    let result = await db.Order.findAll({
      order: [
        ['createdAt', 'desc']
      ],
      include: [
        {
          model: db.OrderItem,
          as: 'orderItemData',
          attributes: ['itemId', 'quantity', 'price'],
          include: [
            {
              model: db.Item,
              as: 'itemData',
              attributes: ['shopId', 'name', 'itemTypeId'],
              where: {
                shopId: idShop
              },
              // required: true,
            }
          ],
        },
        {
          model: db.User,
          as: 'userData',
          attributes: ['fullname', 'imageAvatar'],
        }
      ],
    });
    result = result.filter((item) => item.orderItemData.length !== 0);
    return res.status(200).send(RESPONSE('danh sách đơn hàng', 0, result));
  },
  async getListComment(req, res) {
    //for item or for all
  },
  async updateOrder(req, res) {
    const { isPayment, deliver, idOrder } = req.body;
    // const checkOwn = 
    const option = {};
    if (isPayment !== undefined) option.isPayment = isPayment;
    if (deliver) option.deliver = deliver;
    if (Object.keys(option).length !== 0) {
      await db.Order.update({
        ...option
      }, {
        where: {
          id: idOrder
        }
      })
    }
    return res.status(200).send(RESPONSE('Cập nhật đơn hàng thành công', 0));
  },
  async addPromotion(req, res) {
    const { reducePercent, text, dayBegin, dayFinish } = req.body;
    if (dayFinish < dayBegin) return res.status(200).send(RESPONSE('Thời gian khuyến mãi không hợp lệ', -1));
    await db.Promotion.create({
      userId: req.userId,
      reducePercent,
      text,
      dayBegin: new Date(dayBegin),
      dayFinish: new Date(dayFinish),
      createdAt: new Date(),
      updatedAt: new Date()
    });
    return res.status(200).send(RESPONSE('Tạo khuyến mãi thành công'));
  },
  async toggleItemOnPromotion(req, res) {
    const { items, idPromotion } = req.body;
    const listItemPromotion = await db.PromotionItem.findAll({
      where: {
        promotionId: idPromotion,
        dayFinish: {
          [Op.gte]: new Date(),
        }
      }
    });
    const newItem = listItemPromotion.filter((value) => {
      return !items.includes(value.itemId);
    });
    const fixNewItem = newItem.map((value) => {
      return {
        itemId: value,
        promotionId: idPromotion,
        createdAt: new Date(),
        updatedAt: new Date(),
      }
    })
    await db.PromotionItem.bulkCreate(fixNewItem);
    return res.status(200).send(RESPONSE('Thêm sản phẩm trong khuyến mãi thành công', 0));
  },
  async getPromotion(req, res) {
    const result = await db.Promotion.findAll({
      required: false,
      include: [
        {
          model: db.PromotionItem,
          as: 'promotionItemData',
          attributes: ['itemId'],
          include: [
            {
              model: db.Item,
              as: 'itemData',
              attributes: ['name', 'price', 'description', 'shopId'],
              include: [
                {
                  model: db.Shop,
                  as: 'shopData',
                  attributes: ['name'],
                  where: {
                    ownerId: req.userId
                  }
                }
              ]
            }
          ]
        }
      ]
    });
    return res.status(200).send(RESPONSE('danh sách khuyến mãi người bán tạo', 0, result));
  },
  async getListClientBuy(req, res) {
    // const 
    const result = await db.Order.findAll({
      // where: {
      //   userId: idUser,
      // },
      include: [
        {
          model: db.User,
          as: 'userData',
          attributes: ['fullname'],
        },
      ],
      // group: 'userData.fullname',
      attributes: [[sequelize.fn('count', sequelize.col('User.fullname')), 'totalOrder']]
    });
    return res.status(200).send(RESPONSE('danh sách người dùng', 0, result))
  },
  async createShop(req, res) {
    const trx = new Transaction();
    try {
      const { logo, description, shopName, phoneContact, status } = req.body;
      if (!logo || !description || !shopName || !phoneContact || !status) {
        return res.status(200).send(RESPONSE('Thiếu thông tin gian hàng', -1));
      }
      const checkLimitCreateShop = await db.User.findOne({
        where: {
          id: req.userId
        }
      });
      if (checkLimitCreateShop.limitCreateShop <= 0) {
        return res.status(200).send(RESPONSE('Không đủ lượt tạo gian hàng', -1));
      }
      if (!image.isImage(logo) || image.readSize(logo) > 2) {
        return res.status(200).send(RESPONSE('Logo gian hàng không hợp lệ', -1));
      }
      const saveLogo = image.saveImage(logo, 'shop');
      checkLimitCreateShop.limitCreateShop = checkLimitCreateShop.limitCreateShop - 1;
      await checkLimitCreateShop.save();
      await db.Shop.create({
        logo: saveLogo,
        description, shopName, phoneContact, status
      }, {
        transaction: trx
      });
      await trx.commit();
      return res.status(200).send(RESPONSE('Tạo thêm gian hàng thành công', 0));
    } catch (error) {
      await trx.rollback();
      return res.status(200).send(RESPONSE('có lỗi xảy ra', -1));
    }
  },
  async updateShop(req, res) {
    // set state shop = close
    const trx = new Transaction();
    try {
      const { logo, description, shopName, phoneContact, status } = req.body;
      const options = {};
      if (logo) {
        if (!image.isImage(logo) || image.readSize(logo) > 2) {
          return res.status(200).send(RESPONSE('Logo gian hàng không hợp lệ', -1));
        }
        const saveLogo = image.saveImage(logo, 'shop');
        options.logo = saveLogo;
      }
      if (description) options.description = description;
      if (shopName) options.shopName = shopName;
      if (phoneContact) options.phoneContact = phoneContact;
      if (status) options.status = status;
      await db.Shop.update(options, {
        transaction: trx
      });
      await trx.commit();
      return res.status(200).send(RESPONSE('Cập nhật gian hàng thành công', 0));
    } catch (error) {
      await trx.rollback();
      return res.status(200).send(RESPONSE('có lỗi xảy ra', -1));
    }
  },
  async getListComment(req, res) {
    const { idShop } = req.params;
    const result = await db.Recomment.findAll({
      include: [
        {
          model: db.Item,
          as: 'itemData',
          attributes: ['name'],
          where: {
            shopId: idShop,
          },

        },
        {
          model: db.User,
          as: 'userData',
          attributes: ['fullname', 'imageAvatar']
        },
        {
          model: db.CommentImage,
          as: 'commentImageData',
          attributes: ['image']
        }
      ]
    });
    return res.status(200).send(RESPONSE('danh sách comment của gian hàng', 0, result));
  }
}

module.exports = sellerController;