.class public Lcom/android/camera/ui/ShutterButtonBase;
.super Landroid/widget/ImageView;
.source "ShutterButtonBase.java"


# instance fields
.field protected final baseElevationOffset:I

.field protected burstRippleEnabled:Z

.field protected final clickElevationOffset:I

.field protected clickEnabled:Z

.field private clickEnabledObservable:Lcom/google/android/apps/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private filteredClickEnabledObservable:Lcom/google/android/apps/camera/async/Observable;

.field protected gestureDetector:Lcom/android/camera/ui/SimpleLongPressGestureDetector;

.field protected listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

.field protected touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabled:Z

    .line 24
    new-instance v0, Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-boolean v1, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabledObservable:Lcom/google/android/apps/camera/async/ConcurrentState;

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabledObservable:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->filter(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->filteredClickEnabledObservable:Lcom/google/android/apps/camera/async/Observable;

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButtonBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->baseElevationOffset:I

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButtonBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickElevationOffset:I

    .line 42
    return-void
.end method


# virtual methods
.method public final getClickEnabledObservable()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->filteredClickEnabledObservable:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 157
    invoke-super {p0}, Landroid/widget/ImageView;->invalidateOutline()V

    .line 158
    return-void
.end method

.method public performClick()Z
    .locals 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabled:Z

    if-nez v0, :cond_1

    .line 142
    const/4 v0, 0x0

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButtonBase;->runClickAnimation()V

    .line 145
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/ui/ShutterButtonBase;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonBase;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonBase;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    iget-object v2, p0, Lcom/android/camera/ui/ShutterButtonBase;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    invoke-interface {v1, v2}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;->onShutterTouch(Lcom/google/android/apps/camera/uiutils/TouchCoordinate;)V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/ShutterButtonBase;->touchCoordinate:Lcom/google/android/apps/camera/uiutils/TouchCoordinate;

    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/ShutterButtonBase;->listener:Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;

    invoke-interface {v1}, Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonListener;->onShutterButtonClick()V

    goto :goto_0
.end method

.method public resetShutterButton(Lcom/android/camera/ui/ShutterButtonHolder$ShutterButtonMode;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected runClickAnimation()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public final setClickEnabled(Z)V
    .locals 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabled:Z

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabledObservable:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-boolean v1, p0, Lcom/android/camera/ui/ShutterButtonBase;->clickEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public transitionToCancel()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public transitionToCapture()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public transitionToConfirm()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method protected final updateElevationShadow(FII)V
    .locals 2

    .prologue
    .line 135
    sub-int v0, p3, p2

    .line 136
    int-to-float v1, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ShutterButtonBase;->setTranslationZ(F)V

    .line 137
    return-void
.end method
