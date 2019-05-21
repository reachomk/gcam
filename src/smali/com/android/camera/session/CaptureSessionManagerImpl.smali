.class public final Lcom/android/camera/session/CaptureSessionManagerImpl;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSessionManager;


# instance fields
.field private final clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

.field private final failedSessionMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/camera/ui/UiString;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Lcom/google/android/apps/camera/async/MainThread;

.field private final sessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

.field private final sessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/session/StackableSession;",
            ">;"
        }
    .end annotation
.end field

.field private final taskListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/session/CaptureSessionManager$SessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    const-string v0, "CaptureSessMgrImpl"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/session/CaptureSessionFactory;Lcom/android/camera/session/SessionStorageManager;Lcom/android/camera/error/ShotFailureHandler;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->failedSessionMessages:Ljava/util/HashMap;

    .line 276
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->taskListeners:Ljava/util/LinkedList;

    .line 292
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    .line 293
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    .line 295
    iput-object p4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mainHandler:Lcom/google/android/apps/camera/async/MainThread;

    .line 296
    iput-object p5, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    .line 299
    new-instance v0, Lcom/android/camera/session/SessionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/session/SessionNotifier;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl;B)V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->taskListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/session/CaptureSessionManagerImpl;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mainHandler:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/session/CaptureSessionManagerImpl;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->finalizeSession(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    return-object v0
.end method

.method private final finalizeSession(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 406
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->removeSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    .line 407
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->finalizeSession()V

    .line 411
    :cond_0
    return-void

    .line 407
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final addSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->taskListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->taskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 341
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final createNewSession$5166KOBMC4NMOOBECSNL6T3ID5N6EEQA9HGMSP3IDTKM8BRCDTHM2T39DTN2UJ3FCDGN8QBFDOTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7C______(Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;
    .locals 8

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessionFactory:Lcom/android/camera/session/CaptureSessionFactory;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 305
    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/CaptureSessionFactory;->createNewSession$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQ3C5O78TBICL9MASRJD5NMSJB1DPGMEPBI7D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMASRJD5NMSBQJCLPN6QBFDP76UT39CPKMASHR9HL62TJ15TM62RJ75T9N8SJ9DPJJMIICC5N68SJFD5I2UR3FCDGN8QBFDONKORR3C5Q6IRRE7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NN6PBJEDKMURHF8DGN0T3LE9IL6PBJEDKMURHR(Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Ljava/lang/String;JLandroid/location/Location;)Lcom/android/camera/session/StackableSession;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/android/camera/stats/CaptureSessionTrace;

    .line 308
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/stats/CaptureSessionTrace;-><init>(Lcom/android/camera/stats/UsageStatistics;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V

    .line 310
    invoke-interface {v0}, Lcom/android/camera/session/StackableSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->setSessionTrace(Lcom/android/camera/stats/CaptureSessionTrace;)V

    .line 311
    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->addSessionListener(Lcom/android/camera/session/CaptureSession$CaptureSessionListener;)V

    .line 313
    return-object v0
.end method

.method public final fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->mainHandler:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/session/CaptureSessionManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/session/CaptureSessionManagerImpl$1;-><init>(Lcom/android/camera/session/CaptureSessionManagerImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method public final getErrorMessage(Landroid/net/Uri;)Lcom/android/camera/ui/UiString;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->failedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->failedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/UiString;

    .line 366
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/ui/PreviewContentNoOp;->absent()Lcom/android/camera/ui/UiString;

    move-result-object v0

    goto :goto_0
.end method

.method public final getSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackableSession;

    monitor-exit v1

    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getSessionDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessionStorageManager:Lcom/android/camera/session/SessionStorageManager;

    invoke-interface {v0, p1}, Lcom/android/camera/session/SessionStorageManager;->getSessionDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final hasErrorMessage(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->failedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final putErrorMessage(Landroid/net/Uri;Lcom/android/camera/ui/UiString;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->failedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method

.method public final putSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMJ33DTMIUOBECHP6UQB45THM2RB5E9GIUSR5EDPMIRRE5T1M2S3KELP6AKR5EDPMIRRE7CKLC___(Landroid/net/Uri;Lcom/android/camera/session/StackableSession;)V
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final removeErrorMessage(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->failedSessionMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    return-void
.end method

.method public final removeSession$51662RJ4E9NMIP1FDPIN8BQLE9KJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRJCLPN6QBFDONK6OBGEHQN4PAJCLPN6QBFDOTG____(Landroid/net/Uri;)Lcom/android/camera/session/StackableSession;
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->sessions:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/StackableSession;

    monitor-exit v1

    return-object v0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final removeSessionListener(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 2

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->taskListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionManagerImpl;->taskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 348
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
