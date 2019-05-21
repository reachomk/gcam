.class Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$LruScheduler;
.super Ljava/lang/Object;
.source "GraphRunner.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LruScheduler"
.end annotation


# instance fields
.field private mFilterQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;)V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$LruScheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public getStrategy()I
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x2

    return v0
.end method

.method public nextFilter([Lcom/google/android/libraries/smartburst/filterfw/Filter;Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$ScheduleResult;)V
    .locals 4

    .prologue
    .line 677
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->access$1300()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$ScheduleResult;->priority:J

    .line 678
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$LruScheduler;->mFilterQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 679
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 681
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    iput-object v0, p2, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$ScheduleResult;->filter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 683
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->access$1200()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p2, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$ScheduleResult;->priority:J

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->canSchedule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    iput-object v0, p2, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$ScheduleResult;->filter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 686
    const-wide/16 v2, 0x64

    iput-wide v2, p2, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$ScheduleResult;->priority:J

    .line 687
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 688
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$LruScheduler;->mFilterQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_2
    return-void
.end method

.method public prepare([Lcom/google/android/libraries/smartburst/filterfw/Filter;)[Lcom/google/android/libraries/smartburst/filterfw/Filter;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$LruScheduler;->mFilterQueue:Ljava/util/LinkedList;

    .line 667
    return-object p1
.end method
