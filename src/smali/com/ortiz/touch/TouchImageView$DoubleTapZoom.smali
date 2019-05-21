.class final Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ortiz/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoubleTapZoom"
.end annotation


# instance fields
.field private bitmapX:F

.field private bitmapY:F

.field private endTouch:Landroid/graphics/PointF;

.field private interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private startTime:J

.field private startTouch:Landroid/graphics/PointF;

.field private startZoom:F

.field private stretchImageToSuper:Z

.field private targetZoom:F

.field private synthetic this$0:Lcom/ortiz/touch/TouchImageView;


# direct methods
.method constructor <init>(Lcom/ortiz/touch/TouchImageView;FFFZ)V
    .locals 3

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 1005
    sget v0, Lcom/ortiz/touch/TouchImageView$State;->ANIMATE_ZOOM$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    invoke-static {p1, v0}, Lcom/ortiz/touch/TouchImageView;->access$1200$51666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRJMJ33DTMIURRIEHKNKBRKDTQM6Q1FAHNNAOR895MM2PR5APKMATP4ADQ62T357CKLC___(Lcom/ortiz/touch/TouchImageView;I)V

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startTime:J

    .line 1007
    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v0

    iput v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startZoom:F

    .line 1008
    iput p2, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->targetZoom:F

    .line 1009
    iput-boolean p5, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    .line 1010
    const/4 v0, 0x0

    invoke-static {p1, p3, p4, v0}, Lcom/ortiz/touch/TouchImageView;->access$2300(Lcom/ortiz/touch/TouchImageView;FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 1011
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapX:F

    .line 1012
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapY:F

    .line 1017
    iget v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapY:F

    invoke-static {p1, v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$2400(Lcom/ortiz/touch/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    .line 1018
    new-instance v0, Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1300(Lcom/ortiz/touch/TouchImageView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {p1}, Lcom/ortiz/touch/TouchImageView;->access$1600(Lcom/ortiz/touch/TouchImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    .line 1019
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1023
    .line 2070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2071
    iget-wide v2, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    .line 2072
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2073
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2083
    iget v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startZoom:F

    iget v2, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->targetZoom:F

    iget v3, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startZoom:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-double v2, v1

    .line 2084
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$700(Lcom/ortiz/touch/TouchImageView;)F

    move-result v1

    float-to-double v4, v1

    div-double/2addr v2, v4

    .line 1025
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget v4, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v5, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapY:F

    iget-boolean v6, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    invoke-static/range {v1 .. v6}, Lcom/ortiz/touch/TouchImageView;->access$2200(Lcom/ortiz/touch/TouchImageView;DFFZ)V

    .line 3059
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 3060
    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 3061
    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget v4, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v5, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->bitmapY:F

    invoke-static {v3, v4, v5}, Lcom/ortiz/touch/TouchImageView;->access$2400(Lcom/ortiz/touch/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 3062
    iget-object v4, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v4}, Lcom/ortiz/touch/TouchImageView;->access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1027
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v1}, Lcom/ortiz/touch/TouchImageView;->access$2500(Lcom/ortiz/touch/TouchImageView;)V

    .line 1028
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v2}, Lcom/ortiz/touch/TouchImageView;->access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ortiz/touch/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1038
    cmpg-float v0, v0, v7

    if-gez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    invoke-static {v0, p0}, Lcom/ortiz/touch/TouchImageView;->access$500(Lcom/ortiz/touch/TouchImageView;Ljava/lang/Runnable;)V

    .line 1050
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;->this$0:Lcom/ortiz/touch/TouchImageView;

    sget v1, Lcom/ortiz/touch/TouchImageView$State;->NONE$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    invoke-static {v0, v1}, Lcom/ortiz/touch/TouchImageView;->access$1200$51666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRJMJ33DTMIURRIEHKNKBRKDTQM6Q1FAHNNAOR895MM2PR5APKMATP4ADQ62T357CKLC___(Lcom/ortiz/touch/TouchImageView;I)V

    goto :goto_0
.end method
