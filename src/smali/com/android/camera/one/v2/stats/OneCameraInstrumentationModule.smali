.class public Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
.super Ljava/lang/Object;
.source "OneCameraInstrumentationModule.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private beginBackgroundAlpha:F

.field private beginRadius:F

.field private beginScale:F

.field private beginTranslation:Landroid/graphics/PointF;

.field private endBackgroundAlpha:F

.field private endRadius:F

.field private endScale:F

.field private endTranslation:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/util/SizeF;Landroid/util/SizeF;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V
    .locals 1

    .prologue
    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    invoke-static {p1, p2, p3}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->calculateBeginScale(Landroid/util/SizeF;Landroid/util/SizeF;Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginScale:F

    .line 1035
    invoke-static {p1, p5}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->calculateEndScale(Landroid/util/SizeF;F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endScale:F

    .line 1036
    iget v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginScale:F

    .line 1037
    invoke-static {v0, p1, p2, p3}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->calculateBeginTranslation(FLandroid/util/SizeF;Landroid/util/SizeF;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginTranslation:Landroid/graphics/PointF;

    .line 1038
    iget v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endScale:F

    .line 1039
    invoke-static {v0, p1, p4, p5}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->calculateEndTranslation(FLandroid/util/SizeF;Landroid/graphics/RectF;F)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endTranslation:Landroid/graphics/PointF;

    .line 1041
    invoke-static {p1}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->calculateBeginRadius(Landroid/util/SizeF;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginRadius:F

    .line 1042
    invoke-static {p1}, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->calculateEndRadius(Landroid/util/SizeF;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endRadius:F

    .line 1043
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginBackgroundAlpha:F

    .line 1044
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endBackgroundAlpha:F

    .line 1045
    return-void
.end method

.method private static calculateBeginRadius(Landroid/util/SizeF;)F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1231
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    div-float/2addr v0, v2

    .line 1232
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    div-float/2addr v1, v2

    .line 1233
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1234
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1233
    return v0
.end method

.method private static calculateBeginScale(Landroid/util/SizeF;Landroid/util/SizeF;Landroid/graphics/Rect;)F
    .locals 6

    .prologue
    .line 1097
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    .line 1098
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    .line 1099
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    .line 1100
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    .line 1101
    div-float v5, v1, v0

    .line 1102
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    .line 1104
    :goto_0
    if-eqz v2, :cond_1

    .line 1105
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 1110
    :goto_1
    div-float v2, v3, v4

    .line 1114
    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 1116
    div-float v0, v1, v3

    .line 1121
    :goto_2
    return v0

    .line 1102
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1107
    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_1

    .line 1119
    :cond_2
    div-float/2addr v0, v4

    goto :goto_2
.end method

.method private static calculateBeginTranslation(FLandroid/util/SizeF;Landroid/util/SizeF;Landroid/graphics/Rect;)Landroid/graphics/PointF;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 1126
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    .line 1127
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    .line 1128
    invoke-virtual {p2}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    .line 1129
    invoke-virtual {p2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    .line 1130
    div-float v8, v5, v3

    .line 1132
    cmpg-float v0, v5, v3

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 1133
    :goto_0
    if-eqz v0, :cond_2

    .line 1134
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    .line 1139
    :goto_1
    div-float v9, v6, v7

    .line 1149
    cmpl-float v0, v9, v8

    if-lez v0, :cond_3

    .line 1151
    div-float v0, v5, v9

    move v2, v0

    move v4, v5

    .line 1161
    :goto_2
    cmpl-float v0, v9, v8

    if-lez v0, :cond_4

    .line 1163
    sub-float v0, v3, v2

    div-float/2addr v0, v10

    .line 1171
    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v3

    if-eqz v3, :cond_0

    .line 1173
    sub-float v3, v4, v6

    div-float/2addr v3, v10

    add-float/2addr v1, v3

    .line 1174
    sub-float/2addr v2, v7

    div-float/2addr v2, v10

    add-float/2addr v0, v2

    .line 1176
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 1132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1136
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v5, v0

    goto :goto_1

    .line 1154
    :cond_3
    mul-float v0, v3, v9

    move v2, v3

    move v4, v0

    goto :goto_2

    .line 1165
    :cond_4
    sub-float v0, v5, v4

    div-float/2addr v0, v10

    move v11, v1

    move v1, v0

    move v0, v11

    .line 1166
    goto :goto_3
.end method

.method private static calculateEndRadius(Landroid/util/SizeF;)F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1239
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    div-float/2addr v0, v2

    .line 1240
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    div-float/2addr v1, v2

    .line 1241
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static calculateEndScale(Landroid/util/SizeF;F)F
    .locals 3

    .prologue
    .line 1180
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    .line 1181
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    .line 1182
    cmpg-float v0, v1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 1186
    :goto_0
    if-eqz v0, :cond_1

    .line 1187
    div-float v0, p1, v1

    .line 1191
    :goto_1
    return v0

    .line 1182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1189
    :cond_1
    div-float v0, p1, v2

    goto :goto_1
.end method

.method private static calculateEndTranslation(FLandroid/util/SizeF;Landroid/graphics/RectF;F)Landroid/graphics/PointF;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1199
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    .line 1200
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    .line 1214
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 1215
    iget v4, p2, Landroid/graphics/RectF;->top:F

    .line 1216
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, p3

    div-float v5, v1, v6

    .line 1217
    add-float v1, v0, v5

    .line 1218
    add-float v0, v4, v5

    .line 1222
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p0, v4

    if-eqz v4, :cond_0

    .line 1223
    sub-float v2, p3, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    .line 1224
    sub-float v2, p3, v3

    div-float/2addr v2, v6

    add-float/2addr v0, v2

    .line 1226
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method


# virtual methods
.method public beginBackgroundAlpha$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 0

    .prologue
    .line 1086
    iput p1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginBackgroundAlpha:F

    .line 1087
    return-object p0
.end method

.method public beginScale$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 0

    .prologue
    .line 1056
    iput p1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginScale:F

    .line 1057
    return-object p0
.end method

.method public beginTranslation$51662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_(Landroid/graphics/PointF;)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginTranslation:Landroid/graphics/PointF;

    .line 1067
    return-object p0
.end method

.method public build()Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;
    .locals 9

    .prologue
    .line 1048
    new-instance v0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;

    iget v1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginScale:F

    iget v2, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endScale:F

    iget-object v3, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginTranslation:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endTranslation:Landroid/graphics/PointF;

    iget v5, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginRadius:F

    iget v6, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endRadius:F

    iget v7, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->beginBackgroundAlpha:F

    iget v8, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endBackgroundAlpha:F

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;-><init>(FFLandroid/graphics/PointF;Landroid/graphics/PointF;FFFF)V

    return-object v0
.end method

.method public endBackgroundAlpha$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 0

    .prologue
    .line 1091
    iput p1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endBackgroundAlpha:F

    .line 1092
    return-object p0
.end method

.method public endRadius$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 0

    .prologue
    .line 1081
    iput p1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endRadius:F

    .line 1082
    return-object p0
.end method

.method public endScale$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UT3IC5N76QBKD5NMSBQ6D5M6QSRKE9KN0L3IC5N76QBKD5NMSL3IC5N76PJFE9MK4TB9DHI6ASHR(F)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 0

    .prologue
    .line 1061
    iput p1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endScale:F

    .line 1062
    return-object p0
.end method

.method public endTranslation$51662RJ4E9NMIP1FCTP62S38D5HN6BQGDTKMST267CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMCQBCDLPN8SJ9E0NN8SJ1DPPMIT39DTN2UHJ9DHMN6T3ID5O58SJ1DPPMIT39DTN58SJ1DPPMCRRIDL17AQBCCHIN4EO_(Landroid/graphics/PointF;)Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/camera/one/v2/stats/OneCameraInstrumentationModule;->endTranslation:Landroid/graphics/PointF;

    .line 1072
    return-object p0
.end method
