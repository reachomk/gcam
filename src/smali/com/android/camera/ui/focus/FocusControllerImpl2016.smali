.class public final Lcom/android/camera/ui/focus/FocusControllerImpl2016;
.super Ljava/lang/Object;
.source "FocusControllerImpl2016.java"

# interfaces
.implements Lcom/android/camera/ui/focus/FocusController;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final afHudFlag$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;


# instance fields
.field private final focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/android/camera/util/flags/CameraFlag;

    const-string v1, "camera.debug.afhud"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/util/flags/CameraFlag;-><init>(Ljava/lang/String;ZB)V

    sput-object v0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->afHudFlag$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    .line 25
    const-string v0, "FocusController16"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/views/CameraActivityUi;Lcom/android/camera/util/flags/Flags;Lcom/google/android/apps/camera/async/MainThread;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    const v1, 0x7f1100b7

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    iput-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    sget-object v1, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->afHudFlag$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FCPM62PRJ5T0M8OI6DHGMEEO_:Lcom/android/camera/util/flags/CameraFlag;

    invoke-virtual {p2, v1}, Lcom/android/camera/util/flags/Flags;->get$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQN8QBC5TJ6OOB7ECNK2P328PM62PPR55D0____(Lcom/android/camera/util/flags/CameraFlag;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->setDebugHudVisibility(Z)V

    .line 33
    iput-object p3, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/focus/FocusControllerImpl2016;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    return-object v0
.end method


# virtual methods
.method public final clearFocusIndicator()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/focus/FocusControllerImpl2016$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/focus/FocusControllerImpl2016$1;-><init>(Lcom/android/camera/ui/focus/FocusControllerImpl2016;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public final configurePreviewDimensions(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final setAutoFocusSupported(Z)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->setAutoFocusSupported(Z)V

    .line 50
    return-void
.end method

.method public final setFocusRatio(F)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final setPassiveFocusEnabled(Z)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->setPassiveFocusEnabled(Z)V

    .line 55
    return-void
.end method

.method public final showActiveFocusAt(II)V
    .locals 4

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startActiveFocusAnimation(Landroid/graphics/PointF;)V

    .line 74
    sget-object v1, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "showActiveFocusAt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public final showFocusLockCancel()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startFocusLockHoldCancelAnimation()V

    .line 92
    return-void
.end method

.method public final showFocusLockConfirm()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startFocusLockHoldConfirmAnimation()V

    .line 87
    return-void
.end method

.method public final showFocusLockHoldAt(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 80
    sget-object v1, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "showActiveFocusAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startFocusLockHoldAnimation(Landroid/graphics/PointF;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final showPassiveFocusAt(II)V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startPassiveFocusAnimation(Lcom/google/common/base/Optional;)V

    .line 67
    sget-object v1, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "showPassiveFocusAt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final showPassiveFocusAtCenter()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->startPassiveFocusAnimation(Lcom/google/common/base/Optional;)V

    .line 60
    sget-object v0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->TAG:Ljava/lang/String;

    const-string v1, "showPassiveFocusAtCenter"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final synthetic update(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;

    .line 1044
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusControllerImpl2016;->focusIndicatorView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->update(Lcom/google/android/apps/camera/aaa/AfStateTransition;)V

    .line 22
    return-void
.end method
