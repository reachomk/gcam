.class public Lcom/android/camera/memory/MemoryModule;
.super Ljava/lang/Object;
.source "MemoryModule.java"


# instance fields
.field private final imageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field

.field private final reprocessingParameters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p2, p0, Lcom/android/camera/memory/MemoryModule;->reprocessingParameters:Ljava/util/Collection;

    .line 1035
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    iput-object p1, p0, Lcom/android/camera/memory/MemoryModule;->imageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 1038
    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/libraries/smartburst/integration/BurstMode;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/burst/FrameSaver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/integration/BurstMode;",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/android/camera/burst/FrameSaver;"
        }
    .end annotation

    .prologue
    .line 1051
    .line 2021
    sget-object v0, Lcom/google/android/libraries/smartburst/integration/BurstMode;->HYBRID_BURST:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/google/android/libraries/smartburst/integration/BurstMode;->FIXED_FPS:Lcom/google/android/libraries/smartburst/integration/BurstMode;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1051
    :goto_0
    if-eqz v0, :cond_2

    .line 1052
    new-instance v0, Lcom/android/camera/burst/ConstantRotationFrameSaver;

    iget-object v1, p0, Lcom/android/camera/memory/MemoryModule;->imageSaver$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    iget-object v2, p0, Lcom/android/camera/memory/MemoryModule;->reprocessingParameters:Ljava/util/Collection;

    invoke-direct {v0, v1, v2, p3, p2}, Lcom/android/camera/burst/ConstantRotationFrameSaver;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/util/layout/Orientation;)V

    .line 1055
    :goto_1
    return-object v0

    .line 2021
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1055
    :cond_2
    new-instance v0, Lcom/android/camera/burst/NoOpFrameSaver;

    invoke-direct {v0}, Lcom/android/camera/burst/NoOpFrameSaver;-><init>()V

    goto :goto_1
.end method
