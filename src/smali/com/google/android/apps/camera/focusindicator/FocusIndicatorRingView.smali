.class public Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;
.super Landroid/view/View;
.source "FocusIndicatorRingView.java"


# instance fields
.field private final drawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 22
    invoke-static {v4}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->solidCircleDrawable(I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 23
    invoke-static {v4, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->hollowCircleDrawable(IF)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable;Landroid/graphics/drawable/ShapeDrawable;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->drawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    .line 24
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->drawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    .line 30
    return-void
.end method


# virtual methods
.method public final centerAt(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 42
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->setX(F)V

    .line 43
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->setY(F)V

    .line 44
    return-void
.end method

.method public final getDrawer()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->drawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->drawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;->draw(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->drawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;->setBounds(II)V

    .line 50
    return-void
.end method
