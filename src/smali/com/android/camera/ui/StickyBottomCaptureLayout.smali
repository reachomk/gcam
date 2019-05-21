.class public Lcom/android/camera/ui/StickyBottomCaptureLayout;
.super Landroid/widget/FrameLayout;
.source "StickyBottomCaptureLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bottomBar:Landroid/view/View;

.field private bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

.field private currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "StickyBotCapLayout"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    .line 32
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f11016c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->bottomBar:Landroid/view/View;

    .line 37
    const v0, 0x7f110095

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomBarSideControls;

    iput-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->TAG:Ljava/lang/String;

    const-string v1, "Capture layout helper should be set before onLayout"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    iget-object v1, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->uncoveredPreviewRect:Landroid/graphics/RectF;

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->bottomBarRect:Landroid/graphics/RectF;

    .line 61
    iget-object v2, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    iget-object v2, v2, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->bottomBarContent:Landroid/graphics/RectF;

    .line 62
    iget-object v3, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->bottomBar:Landroid/view/View;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/android/camera/ui/BottomBarSideControls;->layout(IIII)V

    .line 75
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isOnScreenLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const v0, 0x7f1100da

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StickyBottomCaptureLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    .line 80
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0
.end method

.method public final setPreviewLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/StickyBottomCaptureLayout;->bottomBarSideControls:Lcom/android/camera/ui/BottomBarSideControls;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/BottomBarSideControls;->setPreviewLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V

    .line 48
    return-void
.end method
