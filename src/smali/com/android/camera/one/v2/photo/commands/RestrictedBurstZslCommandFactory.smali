.class public final Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;
.super Ljava/lang/Object;
.source "RestrictedBurstZslCommandFactory.java"


# static fields
.field private static final MAX_LOOK_BACK_NANOS:J


# instance fields
.field private final burstFactory:Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;

.field private final defaultPrefilter:Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

.field private final oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToNanosLong(I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->MAX_LOOK_BACK_NANOS:J

    return-void
.end method

.method constructor <init>(Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->defaultPrefilter:Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    .line 41
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->burstFactory:Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;

    .line 42
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 43
    return-void
.end method


# virtual methods
.method public final create(IILcom/android/camera/one/v2/photo/ImageCaptureCommand;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x3

    .line 51
    new-instance v1, Ldagger/internal/MembersInjectors;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 53
    invoke-static {v0, v2, v3, v4}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {v1, v0}, Ldagger/internal/MembersInjectors;-><init>(Ljava/util/Map;)V

    .line 59
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->any()Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->oneCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    sget-object v2, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;->withFocus(Lcom/android/camera/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;

    move-result-object v0

    .line 66
    :cond_0
    new-instance v2, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;

    invoke-direct {v2, v1, v0}, Lcom/android/camera/one/v2/photo/zsl/AcceptableZslImageFilter;-><init>(Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;Lcom/android/camera/one/v2/autofocus/Convergence3ASpec;)V

    .line 70
    new-instance v4, Ldagger/internal/DaggerCollections;

    .line 72
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-direct {v4, v2, v6, v0}, Ldagger/internal/DaggerCollections;-><init>(Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;ILjava/util/Collection;)V

    .line 74
    new-instance v0, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/camera/one/v2/core/Request$Parameter;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/android/camera/one/v2/core/Request$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 75
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    .line 82
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->burstFactory:Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->defaultPrefilter:Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    sget-wide v2, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->MAX_LOOK_BACK_NANOS:J

    .line 84
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/one/v2/photo/commands/DefaultZslRingBufferPolicy;->create(J)Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;

    move-result-object v3

    sget-wide v8, Lcom/android/camera/one/v2/photo/commands/RestrictedBurstZslCommandFactory;->MAX_LOOK_BACK_NANOS:J

    move-object v2, p3

    .line 82
    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/one/v2/photo/commands/BurstZslCommandFactory;->create(Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;Ljava/util/Set;IIJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v0

    return-object v0
.end method
