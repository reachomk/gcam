.class final Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;
.super Ljava/lang/Object;
.source "AeAfActiveScanner.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final activeScanRequestBuilder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2ORKD5R6AKR3C5N54PBHELIN6T22ELKMOP35E8TG____:Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

.field private final commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final convergeFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private final focusMonitor:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

.field private final frameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final scanCommand:Lcom/android/camera/one/v2/command/CameraCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "AeAfActiveScanner"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;Lcom/android/camera/one/v2/autofocus/FocusMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/common/CommonRequestTemplate;",
            ">;",
            "Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;",
            "Lcom/android/camera/one/v2/autofocus/FocusMonitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->convergeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 79
    new-instance v0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$2;-><init>(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->scanCommand:Lcom/android/camera/one/v2/command/CameraCommand;

    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 54
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 55
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->activeScanRequestBuilder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2ORKD5R6AKR3C5N54PBHELIN6T22ELKMOP35E8TG____:Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

    .line 56
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->focusMonitor:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/android/camera/one/v2/core/FrameServer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->frameServer:Lcom/android/camera/one/v2/core/FrameServer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->commonTemplate:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB585J42ORKD5R6AKR3C5N6SPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CDQ6ITJ5ADHM2RIICLONAPBJEH17AQBCCHIN4EO_(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->activeScanRequestBuilder$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2ORKD5R6AKR3C5N54PBHELIN6T22ELKMOP35E8TG____:Lcom/google/android/libraries/smartburst/artifacts/renderers/RasterizerFunctions;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/android/camera/one/v2/autofocus/FocusMonitor;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->focusMonitor:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->convergeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public final getConvergeFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->convergeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->focusMonitor:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->getFocusScanFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$1;

    invoke-direct {v2}, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/camera/async/Futures2;->joinAll(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/apps/camera/async/Futures2$Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final run(Lcom/android/camera/one/v2/command/CameraCommandExecutor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/command/CameraCommandExecutor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->focusMonitor:Lcom/android/camera/one/v2/autofocus/FocusMonitor;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/autofocus/FocusMonitor;->reset()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/AeAfActiveScanner;->scanCommand:Lcom/android/camera/one/v2/command/CameraCommand;

    invoke-virtual {p1, v0}, Lcom/android/camera/one/v2/command/CameraCommandExecutor;->execute(Lcom/android/camera/one/v2/command/CameraCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "AeAfActiveScanner"

    return-object v0
.end method
