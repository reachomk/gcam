.class final Lcom/android/camera/debug/trace/LoggingTrace;
.super Ljava/lang/Object;
.source "LoggingTrace.java"

# interfaces
.implements Lcom/android/camera/debug/trace/Trace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;
    }
.end annotation


# static fields
.field private static final TL_TRACE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

.field private final writer:Lcom/android/camera/debug/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/debug/trace/LoggingTrace$1;

    invoke-direct {v0}, Lcom/android/camera/debug/trace/LoggingTrace$1;-><init>()V

    sput-object v0, Lcom/android/camera/debug/trace/LoggingTrace;->TL_TRACE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/debug/Writer;Lcom/google/android/apps/camera/util/time/NanosecondClock;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/debug/trace/LoggingTrace;->writer:Lcom/android/camera/debug/Writer;

    .line 53
    iput-object p2, p0, Lcom/android/camera/debug/trace/LoggingTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    .line 54
    return-void
.end method

.method private final varargs write(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/camera/debug/trace/LoggingTrace;->writer:Lcom/android/camera/debug/Writer;

    const-string v2, "[%s] %s%s %s%s %s"

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v4, 0x12

    const/16 v5, 0x2d

    .line 133
    invoke-static {p1, v4, v5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    .line 134
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, ""

    add-int/lit8 v5, p6, 0x1

    shl-int/lit8 v5, v5, 0x1

    const/16 v6, 0x2d

    .line 135
    invoke-static {v4, v5, v6}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object p5, v3, v0

    const/4 v4, 0x4

    const-wide v6, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v0, p2, v6

    if-gez v0, :cond_1

    .line 137
    const-string v0, ""

    :goto_1
    aput-object v0, v3, v4

    const/4 v4, 0x5

    .line 138
    invoke-static {p7}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    aput-object v0, v3, v4

    .line 131
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-interface {v1, v0}, Lcom/android/camera/debug/Writer;->write(Ljava/lang/String;)V

    .line 139
    return-void

    .line 134
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    const-string v0, " (%.2fms)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 138
    :cond_2
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public final varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/debug/trace/LoggingTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v2

    .line 105
    sget-object v0, Lcom/android/camera/debug/trace/LoggingTrace;->TL_TRACE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;

    .line 106
    iget v6, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->depth:I

    .line 107
    if-ltz v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v4, "Start must be called before log!"

    invoke-static {v1, v4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 109
    iget-object v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->startTimes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 110
    iget-object v0, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->sections:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sub-long/2addr v2, v8

    .line 114
    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->nanosToMillisDouble(J)D

    move-result-wide v2

    const-string v4, "MARK"

    add-int/lit8 v6, v6, 0x1

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    .line 112
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/debug/trace/LoggingTrace;->write(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void

    .line 107
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final start(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/debug/trace/LoggingTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v2

    .line 60
    sget-object v0, Lcom/android/camera/debug/trace/LoggingTrace;->TL_TRACE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;

    .line 61
    iget v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->depth:I

    .line 62
    iget v6, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->depth:I

    .line 63
    iget-object v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->startTimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v6, v1, :cond_0

    .line 64
    iget-object v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->startTimes:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "STRT"

    const/4 v7, 0x0

    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/Object;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/debug/trace/LoggingTrace;->write(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void

    .line 67
    :cond_0
    iget-object v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->startTimes:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->sections:Ljava/util/List;

    invoke-interface {v0, v6, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final stop()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/camera/debug/trace/LoggingTrace;->clock:Lcom/google/android/apps/camera/util/time/NanosecondClock;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/time/NanosecondClock;->getTimeNs()J

    move-result-wide v2

    .line 78
    sget-object v0, Lcom/android/camera/debug/trace/LoggingTrace;->TL_TRACE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;

    .line 79
    iget v6, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->depth:I

    .line 80
    if-ltz v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v4, "Start must be called before stop!"

    invoke-static {v1, v4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 82
    iget-object v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->startTimes:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 83
    iget-object v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->sections:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 84
    iget v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/camera/debug/trace/LoggingTrace$ThreadLocalTrace;->depth:I

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    sub-long/2addr v2, v10

    .line 88
    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->nanosToMillisDouble(J)D

    move-result-wide v2

    const-string v4, "STOP"

    const/4 v7, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    move-object v0, p0

    .line 86
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/debug/trace/LoggingTrace;->write(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void

    :cond_0
    move v1, v8

    .line 80
    goto :goto_0
.end method

.method public final stopAndStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/camera/debug/trace/LoggingTrace;->stop()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/camera/debug/trace/LoggingTrace;->start(Ljava/lang/String;)V

    .line 99
    return-void
.end method
