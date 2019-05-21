.class public Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;
.super Ljava/lang/Object;
.source "FrameDropperComponents.java"


# instance fields
.field private final disableRaw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->disableRaw:Z

    .line 6074
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 6076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6077
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->disableRaw:Z

    .line 6078
    return-void
.end method

.method public static configureAUC$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ3DTMN0RRECLN78HJ1CDQ6USJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->disallowOverrides()V

    .line 114
    const-class v0, Lcom/google/android/libraries/smartburst/selection/AUCFrameDropper;

    .line 1263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$1;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 139
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "auc_sharpness"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$2;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 152
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "auc_motion_saliency"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$3;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 183
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "auc_quality"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$4;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 197
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "camera_motion_score"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$5;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 209
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "combined_eyes"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$6;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$6;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 235
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-string v1, "FeatureWaitingFrameDropper"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$7;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$7;-><init>()V

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 250
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-string v1, "FixedFrameRateSavingFrameDropper"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$8;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$8;-><init>()V

    .line 251
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 260
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-string v1, "InOrderTimestampFrameDropper"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$9;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$9;-><init>()V

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 270
    const-class v0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;

    .line 2263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$10;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$10;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 279
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 3263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$11;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$11;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 286
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$12;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$12;-><init>()V

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 296
    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$13;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$13;-><init>()V

    .line 297
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 329
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->allowOverrides()V

    .line 330
    return-void
.end method

.method public static configureSimple(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/integration/BurstMode;)V
    .locals 2

    .prologue
    .line 333
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/google/android/libraries/smartburst/integration/BurstMode;->FIXED_FPS:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->disallowOverrides()V

    .line 338
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-string v1, "FixedFPSModeFrameDropper"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$14;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 348
    const-class v0, Lcom/google/android/libraries/smartburst/selection/EventForwardingFrameDropper;

    .line 4263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$15;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 357
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    .line 5263
    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    .line 357
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$16;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$16;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 364
    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-string v1, "med-res-acquisition-pipeline"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$17;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$17;-><init>()V

    .line 365
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;->thenReturn(Lcom/google/android/libraries/smartburst/integration/Instantiator;)V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->allowOverrides()V

    .line 375
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public provideFrameAllocator(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;)",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6086
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->disableRaw:Z

    if-nez v0, :cond_0

    .line 6087
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    .line 6089
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    new-array v1, v3, [Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    invoke-interface {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;->createAllocator([Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;)Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-result-object v0

    goto :goto_0
.end method
