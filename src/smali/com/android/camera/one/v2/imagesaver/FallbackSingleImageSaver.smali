.class public final Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;
.super Ljava/lang/Object;
.source "FallbackSingleImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TOutput:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field

.field private imagesInFlight:I

.field private final inFlight:Lcom/google/android/apps/camera/async/PollingObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/PollingObservable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;"
        }
    .end annotation
.end field

.field private final throughput:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "FBImgSavr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 44
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->fallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->lock:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/google/android/apps/camera/async/PollingObservable;

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$1;-><init>(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/async/PollingObservable;-><init>(Lcom/google/common/base/Supplier;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->inFlight:Lcom/google/android/apps/camera/async/PollingObservable;

    .line 56
    invoke-interface {p1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$2;

    invoke-direct {v1, p1, p2}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$2;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;)V

    .line 55
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/Observables;->transform(Lcom/google/android/apps/camera/async/Observable;Lcom/google/common/base/Function;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Observables;->dereference(Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->throughput:Lcom/google/android/apps/camera/async/Observable;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->imagesInFlight:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->imagesInFlight:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->imagesInFlight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->complete(Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ6C5M6OOJ1CDLL6QBECTM6AIBDC5JMAKR1EPIN4EP99HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->submitSecondary(Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;)Lcom/google/android/apps/camera/async/PollingObservable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->inFlight:Lcom/google/android/apps/camera/async/PollingObservable;

    return-object v0
.end method

.method private final complete(Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOutput;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TTOutput;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->imagesInFlight:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->imagesInFlight:I

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->inFlight:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 142
    return-void

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final submitSecondary(Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTInput;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TTOutput;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->fallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$4;-><init>(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 133
    return-void
.end method


# virtual methods
.method public final maxThroughput()Lcom/google/android/apps/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->throughput:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method public final process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTInput;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TTOutput;>;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->imagesInFlight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->imagesInFlight:I

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 1097
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->maxThroughput()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->primary$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UGBJF5N66KR9DPJMOPA9DLGMEPAJC5R6ASHR:Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;->process(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1099
    new-instance v2, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver$3;-><init>(Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;Lcom/google/common/util/concurrent/SettableFuture;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 1111
    const/4 v0, 0x1

    .line 87
    :goto_0
    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1, v1}, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->submitSecondary(Ljava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/FallbackSingleImageSaver;->inFlight:Lcom/google/android/apps/camera/async/PollingObservable;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/PollingObservable;->update()V

    .line 93
    return-object v1

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
