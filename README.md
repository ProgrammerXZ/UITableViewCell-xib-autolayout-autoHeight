# UITableViewCell-xib-autolayout-autoHeight
使用xib自定义UITableViewCell 自动cell计算高度。ios7.0后可使用

以前我们都是用sizewithfont来手动计算cell的高度，这样比较麻烦。ios7.0后，大家都用xib或者sb来代替繁冗复杂的cell，
这时，需要我们来学习autolayout，ios7.0后推出一个新的方法：systemLayoutSizeFittingSize，它会根据你cell的约束来计算出
cell的实际高度。

＊＊＊＊＊无论多么复杂的cell，在xib中给cell添加约束的时候必须为垂直的。否则可能无法计算出实际高度，在这里特别声明下。

