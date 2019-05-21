.class public final Lcom/android/camera/processing/ProcessingServiceManager;
.super Ljava/lang/Object;
.source "ProcessingServiceManager.java"

# interfaces
.implements Lcom/android/camera/processing/ProcessingTaskConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private holdProcessing:Z

.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/processing/ProcessingTask;",
            ">;"
        }
    .end annotation
.end field

.field private restartAfterShutdown:Z

.field private final serviceStarter:Ljava/lang/Runnable;

.field private serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "ProcessingSvcMgr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->holdProcessing:Z

    .line 58
    iput-object p2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceStarter:Ljava/lang/Runnable;

    .line 59
    sget-object v0, Lcom/android/camera/processing/ProcessingServiceManager;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    .line 61
    sget v0, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->DESTROYED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    iput v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    .line 62
    return-void
.end method

.method private final ensureServiceIsUp()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    sget v2, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->DESTROYED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    if-ne v0, v2, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Starting service (was DESTROYED)"

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceStarter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    sget v0, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->STARTING_UP_OR_RUNNING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    iput v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    .line 190
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 181
    :cond_1
    iget v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    sget v2, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->SHUTTING_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    if-ne v0, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Scheduling service restart, is shutting down"

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->restartAfterShutdown:Z

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final enqueueTask(Lcom/android/camera/processing/ProcessingTask;)V
    .locals 6

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Task already enqueued"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Task added ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]. Queue size now: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->holdProcessing:Z

    if-nez v0, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingServiceManager;->ensureServiceIsUp()V

    .line 82
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final isRunningOrHasItems()Z
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    sget v2, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->STARTING_UP_OR_RUNNING$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final onServiceDestroyed()V
    .locals 5

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    sget v0, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->DESTROYED$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    iput v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    .line 158
    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    const-string v3, "Service destroyed, restarting? "

    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->restartAfterShutdown:Z

    if-eqz v0, :cond_1

    const-string v0, "Yes"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->restartAfterShutdown:Z

    if-eqz v0, :cond_3

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->restartAfterShutdown:Z

    .line 161
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingServiceManager;->ensureServiceIsUp()V

    .line 167
    :cond_0
    monitor-exit v1

    return-void

    .line 158
    :cond_1
    const-string v0, "No"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Service destroyed, not restarting but queue has items."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final popNextSession()Lcom/android/camera/processing/ProcessingTask;
    .locals 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->holdProcessing:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Popping a session. Remaining: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/ProcessingTask;

    monitor-exit v1

    .line 102
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    iget-boolean v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->holdProcessing:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Popping null. On hold? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 100
    sget v0, Lcom/android/camera/processing/ProcessingServiceManager$ServiceState;->SHUTTING_DOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    iput v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->serviceState$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FE1P6UOR5EDPMIRJ75T874RR3CLPN6QBECT9MASJMD5HMAJB1DPGMEPBI4H9MASJMD5HMAKRKC5Q6AEO_:I

    .line 102
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final resumeProcessing()V
    .locals 5

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Resume processing. Queue size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->holdProcessing:Z

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->holdProcessing:Z

    .line 145
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/camera/processing/ProcessingServiceManager;->ensureServiceIsUp()V

    .line 149
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final suspendProcessing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 125
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingServiceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/processing/ProcessingServiceManager;->isRunningOrHasItems()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    const-string v3, "Suspend processing"

    invoke-virtual {v2, v3}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/processing/ProcessingServiceManager;->holdProcessing:Z

    .line 129
    monitor-exit v1

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingServiceManager;->log:Lcom/android/camera/debug/Logger;

    const-string v2, "Not able to suspend processing."

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
