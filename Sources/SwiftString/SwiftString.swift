
extension String {
    public subscript(r: Range<Int>) -> Substring {
        let beginIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let endIndex = self.index(self.startIndex, offsetBy: r.upperBound - 1)
        let range = beginIndex...endIndex
        return self[range]
    }

    public subscript(r: ClosedRange<Int>) -> Substring {
        let beginIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let endIndex = self.index(self.startIndex, offsetBy: r.upperBound + 1)
        return self[r.lowerBound ..< (r.upperBound+1)]
    }
}
