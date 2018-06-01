//
//  LineChartView.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

/// Chart that draws lines, surfaces, circles, ...
open class LineChartView: BarLineChartViewBase, LineChartDataProvider
{
    internal override func initialize()
    {
        super.initialize()
        // 朱元斌2018-06-01 注释
//        renderer = LineChartRenderer(dataProvider: self, animator: _animator, viewPortHandler: _viewPortHandler)
        // 朱元斌2018-06-01 添加
                renderer = BMFLineChartRenderer(dataProvider: self, animator: _animator, viewPortHandler: _viewPortHandler)

    }
    
    // MARK: - LineChartDataProvider
    
    open var lineData: LineChartData? { return _data as? LineChartData }
}
