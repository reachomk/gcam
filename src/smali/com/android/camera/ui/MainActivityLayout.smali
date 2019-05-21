.class public Lcom/android/camera/ui/MainActivityLayout;
.super Landroid/widget/FrameLayout;
.source "MainActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/MainActivityLayout$MotionEventCallback;
    }
.end annotation


# instance fields
.field private lastAppliedWindowInsets:Landroid/view/WindowInsets;

.field private nonDecorWindowSizeChangedListener:Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;

.field private onInterceptTouchCallback:Lcom/android/camera/ui/MainActivityLayout$MotionEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "MainActivityLayout"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->nonDecorWindowSizeChangedListener:Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 17
    iput-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->lastAppliedWindowInsets:Landroid/view/WindowInsets;

    .line 31
    return-void
.end method


# virtual methods
.method public final getCurrentRootWindowInsets()Landroid/view/WindowInsets;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->instance()Lcom/android/camera/util/ApiHelper;

    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isMOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/MainActivityLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->lastAppliedWindowInsets:Landroid/view/WindowInsets;

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/ui/MainActivityLayout;->lastAppliedWindowInsets:Landroid/view/WindowInsets;

    .line 62
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->onInterceptTouchCallback:Lcom/android/camera/ui/MainActivityLayout$MotionEventCallback;

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/android/camera/ui/MainActivityLayout$MotionEventCallback;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->nonDecorWindowSizeChangedListener:Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->nonDecorWindowSizeChangedListener:Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 36
    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;->onNonDecorWindowSizeChanged(II)V

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 40
    return-void
.end method

.method public final setNonDecorWindowSizeChangedListener(Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;)V
    .locals 3

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/ui/MainActivityLayout;->nonDecorWindowSizeChangedListener:Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->nonDecorWindowSizeChangedListener:Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/MainActivityLayout;->nonDecorWindowSizeChangedListener:Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/ui/MainActivityLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/MainActivityLayout;->getMeasuredHeight()I

    move-result v2

    .line 51
    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/CameraAppUI$NonDecorWindowSizeChangedListener;->onNonDecorWindowSizeChanged(II)V

    .line 54
    :cond_0
    return-void
.end method

.method public final setOnInterceptTouchCallback(Lcom/android/camera/ui/MainActivityLayout$MotionEventCallback;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/MainActivityLayout;->onInterceptTouchCallback:Lcom/android/camera/ui/MainActivityLayout$MotionEventCallback;

    .line 80
    return-void
.end method
