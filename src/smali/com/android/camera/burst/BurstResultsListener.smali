.class public Lcom/android/camera/burst/BurstResultsListener;
.super Ljava/lang/Object;
.source "BurstResultsListener.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstFacadeRunner;

.field final synthetic val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeRunner;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)V
    .locals 0

    .prologue
    .line 3392
    iput-object p1, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    iput-object p2, p0, Lcom/android/camera/burst/BurstResultsListener;->val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBurstCompleted()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1500(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->burstStats()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/BurstSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/BurstSession;->recordBurstAllFilesSaved()V

    .line 1408
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBurstCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1300(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 1410
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1400(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1411
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1600(Lcom/android/camera/burst/BurstFacadeRunner;)V

    .line 1412
    return-void
.end method

.method public onBurstError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1300(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/SafeCloseable;->close()V

    .line 2401
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1400(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 2402
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    iget-object v1, p0, Lcom/android/camera/burst/BurstResultsListener;->val$burstUIController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC9QN4SRK5T17ASJJEHAKIGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/hdrplus/HdrPlusSessionModule;

    invoke-static {v0, p1, v1}, Lcom/android/camera/burst/BurstFacadeRunner;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ4COB3C5I6AKJLDPN6ASHR9HL62TJ15TM62RJ75TA6GSJFETGM4R357D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TH7ASJJEGNK4TBIEDQ5AIA3DTN78SJFDHM6ASHR55B0____(Lcom/android/camera/burst/BurstFacadeRunner;Ljava/lang/Throwable;Lcom/android/camera/hdrplus/HdrPlusSessionModule;)V

    .line 2403
    return-void
.end method

.method public onBurstPreviewAvailable()V
    .locals 2

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1500(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/android/camera/stats/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/Instrumentation;->burstStats()Lcom/android/camera/stats/InstrumentationSessionRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/InstrumentationSessionRecorder;->getCurrentSession()Lcom/android/camera/stats/InstrumentationSession;

    move-result-object v0

    check-cast v0, Lcom/android/camera/stats/BurstSession;

    invoke-virtual {v0}, Lcom/android/camera/stats/BurstSession;->recordBurstPreviewAvailable()V

    .line 2417
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBurstPreviewAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1400(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 2420
    return-void
.end method

.method public onBurstStarted()V
    .locals 2

    .prologue
    .line 1395
    invoke-static {}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBurstStarted"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    return-void
.end method

.method public onReadyForNextBurst()V
    .locals 2

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/camera/burst/BurstResultsListener;->this$0:Lcom/android/camera/burst/BurstFacadeRunner;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeRunner;->access$1400(Lcom/android/camera/burst/BurstFacadeRunner;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 2425
    return-void
.end method
