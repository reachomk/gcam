.class final Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;
.super Ljava/lang/Object;
.source "SelfieFlashControllerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstA11yButtonController$Listener;
.implements Lcom/android/camera/selfieflash/SelfieFlashController;
.implements Lcom/google/android/libraries/stitch/lifecycle/ActivityInterfaces$OnNewIntent;


# instance fields
.field private final bottomBar:Lcom/android/camera/ui/ShutterButtonHolder;

.field private final cameraSwitchButton:Lcom/android/camera/widget/CameraSwitchButton;

.field private final captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

.field private final currentModule:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final flashColor:I

.field private isFrontCamera:Z

.field private isOn:Z

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final selfieFlashState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private final shutterCancelButton:Lcom/android/camera/widget/DarkLightImageButton;

.field private final windowBrightness:Lcom/android/camera/ui/WindowBrightness;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/AddOnlyLifetime;Lcom/android/camera/ui/ShutterButtonHolder;Lcom/android/camera/widget/CameraSwitchButton;Lcom/android/camera/ui/CaptureAnimationOverlay;Lcom/android/camera/widget/DarkLightImageButton;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/WindowBrightness;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/AddOnlyLifetime;",
            "Lcom/android/camera/ui/ShutterButtonHolder;",
            "Lcom/android/camera/widget/CameraSwitchButton;",
            "Lcom/android/camera/ui/CaptureAnimationOverlay;",
            "Lcom/android/camera/widget/DarkLightImageButton;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/ui/WindowBrightness;",
            "Lcom/google/android/apps/camera/async/Observable;",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->isOn:Z

    .line 51
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/WindowBrightness;

    iput-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->windowBrightness:Lcom/android/camera/ui/WindowBrightness;

    .line 52
    invoke-static {p6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/MainThread;

    iput-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 53
    iput p10, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->flashColor:I

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->isFrontCamera:Z

    .line 55
    iput-object p8, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->selfieFlashState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    .line 56
    iput-object p9, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->currentModule:Lcom/google/android/apps/camera/async/Observable;

    .line 57
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ShutterButtonHolder;

    iput-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->bottomBar:Lcom/android/camera/ui/ShutterButtonHolder;

    .line 58
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/CameraSwitchButton;

    iput-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->cameraSwitchButton:Lcom/android/camera/widget/CameraSwitchButton;

    .line 59
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CaptureAnimationOverlay;

    iput-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    .line 60
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/DarkLightImageButton;

    iput-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->shutterCancelButton:Lcom/android/camera/widget/DarkLightImageButton;

    .line 61
    invoke-direct {p0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->turnFlashOff()V

    .line 63
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->selfieFlashState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    new-instance v1, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$1;-><init>(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V

    iget-object v2, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 64
    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    .line 63
    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/async/AddOnlyLifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->updateFromSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->updateUIFromMainThread()V

    return-void
.end method

.method private final turnFlashOff()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->selfieFlashState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->selfieFlashState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final updateFromSettings()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->selfieFlashState$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->isFrontCamera:Z

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->currentModule:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 99
    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->isOn:Z

    .line 2104
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl$2;-><init>(Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void

    :cond_0
    move v0, v2

    .line 1157
    goto :goto_0

    :cond_1
    move v0, v2

    .line 99
    goto :goto_1
.end method

.method private final updateUIFromMainThread()V
    .locals 3

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->isOn:Z

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->windowBrightness:Lcom/android/camera/ui/WindowBrightness;

    invoke-virtual {v0}, Lcom/android/camera/ui/WindowBrightness;->setMaxBrightness()V

    .line 2123
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->bottomBar:Lcom/android/camera/ui/ShutterButtonHolder;

    iget v1, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->flashColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButtonHolder;->showSelfieFlash(I)V

    .line 2124
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->cameraSwitchButton:Lcom/android/camera/widget/CameraSwitchButton;

    .line 2216
    invoke-virtual {v0}, Lcom/android/camera/widget/CameraSwitchButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/CameraSwitchButton;->setColorFilter(I)V

    .line 2125
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    iget v1, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->flashColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CaptureAnimationOverlay;->setColor(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->shutterCancelButton:Lcom/android/camera/widget/DarkLightImageButton;

    invoke-virtual {v0}, Lcom/android/camera/widget/DarkLightImageButton;->setLightMode()V

    .line 119
    :goto_0
    return-void

    .line 3130
    :cond_0
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->windowBrightness:Lcom/android/camera/ui/WindowBrightness;

    invoke-virtual {v0}, Lcom/android/camera/ui/WindowBrightness;->clearBrightnessOverride()V

    .line 3131
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->bottomBar:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-virtual {v0}, Lcom/android/camera/ui/ShutterButtonHolder;->hideSelfieFlash()V

    .line 3132
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->cameraSwitchButton:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v0}, Lcom/android/camera/widget/CameraSwitchButton;->unsetDarkFrontFacingDrawable()V

    .line 3133
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->captureAnimationOverlay:Lcom/android/camera/ui/CaptureAnimationOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureAnimationOverlay;->resetColor()V

    .line 3134
    iget-object v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->shutterCancelButton:Lcom/android/camera/widget/DarkLightImageButton;

    invoke-virtual {v0}, Lcom/android/camera/widget/DarkLightImageButton;->setDarkMode()V

    goto :goto_0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public final onCameraChanged(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->isFrontCamera:Z

    .line 77
    invoke-direct {p0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->turnFlashOff()V

    .line 78
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/camera/selfieflash/SelfieFlashControllerImpl;->turnFlashOff()V

    .line 93
    return-void
.end method
