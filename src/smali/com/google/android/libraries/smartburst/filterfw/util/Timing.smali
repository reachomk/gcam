.class public Lcom/google/android/libraries/smartburst/filterfw/util/Timing;
.super Ljava/lang/Object;
.source "Timing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;
    }
.end annotation


# static fields
.field static timings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->timings:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->mName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 4

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->timings:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;-><init>()V

    .line 58
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->timings:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->start_time:J

    .line 61
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;-><init>()V

    .line 65
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->timings:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public end()V
    .locals 6

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->timings:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;

    .line 70
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->start_time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 71
    :cond_0
    const-string v0, "Timing"

    const-string v1, "No begin called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->start_time:J

    sub-long/2addr v2, v4

    .line 75
    iget v1, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    if-nez v1, :cond_2

    .line 76
    iput-wide v2, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->min:J

    .line 77
    iput-wide v2, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->max:J

    .line 78
    iput-wide v2, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->sum:J

    .line 79
    iput-wide v2, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->latest:J

    .line 80
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    goto :goto_0

    .line 82
    :cond_2
    iget v1, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->count:I

    .line 83
    iget-wide v4, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->sum:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->sum:J

    .line 84
    iget-wide v4, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->min:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->min:J

    .line 85
    iget-wide v4, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->max:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->max:J

    .line 86
    iput-wide v2, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->latest:J

    goto :goto_0
.end method

.method public log()V
    .locals 9

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->timings:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;

    .line 92
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v2, "Timing: "

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing;->mName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->getAverage()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->getMax()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->latest:J

    .line 97
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/util/Timing$Stats;->getCount()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x5a

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Average: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Maximum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Latest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
