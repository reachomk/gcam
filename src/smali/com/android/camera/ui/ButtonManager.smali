.class public final Lcom/android/camera/ui/ButtonManager;
.super Ljava/lang/Object;
.source "ButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ButtonManager$ButtonCallback;
    }
.end annotation


# instance fields
.field private final appController:Lcom/android/camera/app/AppController;

.field private buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

.field private buttonCancel:Landroid/widget/ImageButton;

.field private buttonDone:Landroid/widget/ImageButton;

.field private buttonRetake:Landroid/widget/ImageButton;

.field private final cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

.field private final settingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "ButtonMgr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Lcom/android/camera/ui/controller/CameraFacingStatechart;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/android/camera/util/CameraUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/AppController;

    iput-object v0, p0, Lcom/android/camera/ui/ButtonManager;->appController:Lcom/android/camera/app/AppController;

    .line 61
    invoke-static {p2}, Lcom/android/camera/util/CameraUtil;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CameraFacingStatechart;

    iput-object v0, p0, Lcom/android/camera/ui/ButtonManager;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    .line 63
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ButtonManager;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/ui/controller/CameraFacingStatechart;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->cameraFacingStatechart:Lcom/android/camera/ui/controller/CameraFacingStatechart;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->appController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ButtonManager;)Lcom/android/camera/settings/SettingsManager;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    return-object v0
.end method

.method private final getButtonOrError(I)Lcom/android/camera/widget/AnimatedImageButton;
    .locals 3

    .prologue
    .line 218
    packed-switch p1, :pswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "button not known by id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

    return-object v0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private final getImageButtonOrError(I)Landroid/widget/ImageButton;
    .locals 3

    .prologue
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "button not known by id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCancel:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancel button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCancel:Landroid/widget/ImageButton;

    .line 255
    :goto_0
    return-object v0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonDone:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Done button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonDone:Landroid/widget/ImageButton;

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonRetake:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retake button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonRetake:Landroid/widget/ImageButton;

    goto :goto_0

    .line 252
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCancel:Landroid/widget/ImageButton;

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Review button could not be found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCancel:Landroid/widget/ImageButton;

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showButton(I)V
    .locals 2

    .prologue
    .line 387
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ButtonManager;->getButtonOrError(I)Lcom/android/camera/widget/AnimatedImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final disableButton(I)V
    .locals 3

    .prologue
    .line 338
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ButtonManager;->getButtonOrError(I)Lcom/android/camera/widget/AnimatedImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 346
    :cond_0
    const v1, 0x7f0a02c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 347
    return-void
.end method

.method public final enableButton(I)V
    .locals 3

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ButtonManager;->getButtonOrError(I)Lcom/android/camera/widget/AnimatedImageButton;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 354
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 360
    :cond_0
    const v1, 0x7f0a02c7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 361
    return-void
.end method

.method public final getAccessibilityFocusedButton()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v0}, Lcom/android/camera/widget/CameraSwitchButton;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method public final hideButton(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 369
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/ButtonManager;->getButtonOrError(I)Lcom/android/camera/widget/AnimatedImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 374
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :cond_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageButton;

    move-result-object v0

    goto :goto_0
.end method

.method public final initializeButton(ILcom/android/camera/ui/ButtonManager$ButtonCallback;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 269
    const/4 v3, 0x4

    .line 1281
    invoke-direct {p0, v3}, Lcom/android/camera/ui/ButtonManager;->getButtonOrError(I)Lcom/android/camera/widget/AnimatedImageButton;

    move-result-object v0

    .line 1282
    packed-switch v3, :pswitch_data_0

    .line 1287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "button not known by id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :pswitch_0
    check-cast v0, Lcom/android/camera/widget/CameraSwitchButton;

    const/4 v4, 0x0

    .line 1404
    iget-object v1, p0, Lcom/android/camera/ui/ButtonManager;->settingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v5, p0, Lcom/android/camera/ui/ButtonManager;->appController:Lcom/android/camera/app/AppController;

    .line 1405
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_key"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1406
    if-ltz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/CameraSwitchButton;->setState(IZ)V

    .line 1432
    new-instance v1, Lcom/android/camera/ui/ButtonManager$2;

    invoke-direct {v1, v4}, Lcom/android/camera/ui/ButtonManager$2;-><init>(Lcom/android/camera/ui/ButtonManager$ButtonCallback;)V

    invoke-interface {v0, v1}, Lcom/android/camera/widget/AnimatedImageButton;->setOnPreChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V

    .line 1410
    new-instance v1, Lcom/android/camera/ui/ButtonManager$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/camera/ui/ButtonManager$1;-><init>(Lcom/android/camera/ui/ButtonManager;Lcom/android/camera/widget/CameraSwitchButton;Lcom/android/camera/ui/ButtonManager$ButtonCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/CameraSwitchButton;->setOnStateChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V

    .line 1290
    invoke-direct {p0, v3}, Lcom/android/camera/ui/ButtonManager;->showButton(I)V

    .line 1291
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ButtonManager;->enableButton(I)V

    .line 270
    return-void

    :cond_0
    move v1, v2

    .line 1406
    goto :goto_0

    .line 1282
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final initializePushButton(ILandroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 331
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2, v1, v1}, Lcom/android/camera/ui/ButtonManager;->initializePushButton(ILandroid/view/View$OnClickListener;II)V

    .line 332
    return-void
.end method

.method public final initializePushButton(ILandroid/view/View$OnClickListener;II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 301
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ButtonManager;->getImageButtonOrError(I)Landroid/widget/ImageButton;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    if-eq p3, v1, :cond_0

    .line 304
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 306
    :cond_0
    if-eq p4, v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/camera/ui/ButtonManager;->appController:Lcom/android/camera/app/AppController;

    .line 308
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 311
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 317
    :cond_2
    const v1, 0x7f0a02c7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    .line 319
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 325
    :cond_3
    return-void
.end method

.method public final load(Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;)V
    .locals 2

    .prologue
    .line 72
    .line 1102
    const v0, 0x7f110097

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/CameraSwitchButton;

    iput-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

    .line 1104
    const v0, 0x7f11016c

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomBar;

    .line 1105
    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->getDoneButton()Landroid/widget/ImageButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ButtonManager;->buttonDone:Landroid/widget/ImageButton;

    .line 1106
    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->getRetakeButton()Landroid/widget/ImageButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/ButtonManager;->buttonRetake:Landroid/widget/ImageButton;

    .line 1107
    invoke-virtual {v0}, Lcom/android/camera/ui/BottomBar;->getCancelButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCancel:Landroid/widget/ImageButton;

    .line 73
    return-void
.end method

.method public final switchCameraFacing()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/ButtonManager;->buttonCamera:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v0}, Lcom/android/camera/widget/CameraSwitchButton;->callOnClick()Z

    .line 126
    :cond_0
    return-void
.end method
