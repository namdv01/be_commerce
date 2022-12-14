const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const cors = require('cors');

require('dotenv').config();
const { connectDB } = require('./config/connectDB');
const initWebRouter = require('./routes/index');

const app = express();
app.use(cors({
  origin: [
    'http://localhost:3006',
  ],
  credentials: true,
}));
app.use(cookieParser());
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ extended: true, limit: '10mb' }));
app.use('/public', express.static(path.join(__dirname, 'public/img')));
connectDB();

initWebRouter(app);

const port = process.env.PORT || 6969;
console.log(process.env.PORT);
app.listen(port, () => {
  console.log(`server run on port :${port}`);
});
