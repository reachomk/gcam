.class public Lcom/android/camera/ui/FaceView;
.super Landroid/view/View;
.source "FaceView.java"


# instance fields
.field private color:I

.field private displayOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field private faces:[Landroid/hardware/Camera$Face;

.field private handler:Landroid/os/Handler;

.field private matrix:Landroid/graphics/Matrix;

.field private mirror:Z

.field private numFacesLastInvalidate:I

.field private paint:Landroid/graphics/Paint;

.field private pendingFaces:[Landroid/hardware/Camera$Face;

.field private point:Landroid/graphics/PointF;

.field private final previewArea:Landroid/graphics/RectF;

.field private rect:Landroid/graphics/RectF;

.field private sensorOrientation:I

.field private stateSwitchPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "FaceView"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->matrix:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->rect:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    .line 56
    iput v1, p0, Lcom/android/camera/ui/FaceView;->numFacesLastInvalidate:I

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceView;->stateSwitchPending:Z

    .line 58
    new-instance v0, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->handler:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    .line 73
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    const v1, 0x7f0b01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->color:I

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    const v2, 0x7f0c012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;Z)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->stateSwitchPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/FaceView;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FaceView;)[Landroid/hardware/Camera$Face;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->pendingFaces:[Landroid/hardware/Camera$Face;

    return-object v0
.end method

.method private final getNumFaces()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final invalidateIfFacesPresent()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->getNumFaces()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FaceView;->numFacesLastInvalidate:I

    if-lez v0, :cond_1

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->getNumFaces()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->numFacesLastInvalidate:I

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 192
    :cond_1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    .line 131
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->invalidateIfFacesPresent()V

    .line 132
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 203
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FaceView;->setAlpha(F)V

    .line 204
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->getNumFaces()I

    move-result v0

    if-lez v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v4, v0

    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v5, v0

    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->matrix:Landroid/graphics/Matrix;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mirror:Z

    iget v2, p0, Lcom/android/camera/ui/FaceView;->sensorOrientation:I

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->displayOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->prepareLegacyFaceToPreview(Landroid/graphics/Matrix;ZILcom/google/android/apps/camera/util/layout/Orientation;II)V

    .line 213
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    array-length v2, v1

    move v0, v6

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 214
    iget v4, v3, Landroid/hardware/Camera$Face;->score:I

    const/16 v5, 0x32

    if-lt v4, v5, :cond_2

    .line 1136
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->rect:Landroid/graphics/RectF;

    iget-object v5, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1140
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1144
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/FaceView;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1145
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 1146
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1148
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    const v5, 0x3d3851ec    # 0.045f

    mul-float/2addr v4, v5

    .line 1149
    new-array v5, v12, [F

    .line 1150
    new-array v7, v12, [F

    .line 1153
    iget-object v8, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    if-eqz v8, :cond_0

    .line 1154
    iget-object v8, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v5, v6

    .line 1155
    iget-object v8, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v5, v11

    .line 1156
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1157
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    aget v9, v7, v6

    aget v10, v7, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 1158
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->offset(FF)V

    .line 1159
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1163
    :cond_0
    iget-object v8, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    if-eqz v8, :cond_1

    .line 1164
    iget-object v8, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v5, v6

    .line 1165
    iget-object v8, v3, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    aput v8, v5, v11

    .line 1166
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v7, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1167
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    aget v9, v7, v6

    aget v10, v7, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 1168
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->offset(FF)V

    .line 1169
    iget-object v8, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1173
    :cond_1
    iget-object v8, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    if-eqz v8, :cond_2

    .line 1174
    iget-object v8, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v5, v6

    .line 1175
    iget-object v3, v3, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v5, v11

    .line 1176
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v7, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 1177
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    aget v5, v7, v6

    aget v7, v7, v11

    invoke-virtual {v3, v5, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 1178
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v7}, Landroid/graphics/PointF;->offset(FF)V

    .line 1179
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->point:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 219
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 220
    return-void
.end method

.method public final setDisplayOrientation(Lcom/google/android/apps/camera/util/layout/Orientation;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->displayOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 118
    return-void
.end method

.method public final setFaces([Landroid/hardware/Camera$Face;Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    if-eqz v0, :cond_3

    .line 87
    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-eqz v0, :cond_1

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->pendingFaces:[Landroid/hardware/Camera$Face;

    .line 90
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->stateSwitchPending:Z

    if-nez v0, :cond_2

    .line 91
    iput-boolean v1, p0, Lcom/android/camera/ui/FaceView;->stateSwitchPending:Z

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    :cond_2
    :goto_0
    return-void

    .line 97
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->stateSwitchPending:Z

    if-eqz v0, :cond_4

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->stateSwitchPending:Z

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    :cond_4
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->faces:[Landroid/hardware/Camera$Face;

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->previewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 103
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->invalidateIfFacesPresent()V

    goto :goto_0
.end method

.method public final setMirror(Z)V
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mirror:Z

    .line 125
    return-void
.end method

.method public final setSensorOrientation(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/android/camera/ui/FaceView;->sensorOrientation:I

    .line 111
    return-void
.end method
