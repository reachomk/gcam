.class public Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
.super Ljava/lang/Object;
.source "FilterGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mFilters:[Lcom/google/android/libraries/smartburst/filterfw/Filter;

.field private mParentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

.field mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

.field private final mSubGraphs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubGraphsTearDownLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilters:[Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphs:Ljava/util/HashSet;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphsTearDownLock:Ljava/lang/Object;

    .line 643
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    .line 644
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->addGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 645
    if-eqz p2, :cond_0

    .line 646
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mParentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 647
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mParentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphs:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;[Lcom/google/android/libraries/smartburst/filterfw/Filter;)[Lcom/google/android/libraries/smartburst/filterfw/Filter;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilters:[Lcom/google/android/libraries/smartburst/filterfw/Filter;

    return-object p1
.end method

.method private addAllFiltersTo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getFilters()[Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 599
    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->addAllFiltersTo(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 601
    :cond_0
    return-void
.end method

.method static checkSignaturesForFilters(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 608
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v2

    .line 609
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->checkInputPortsConform(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 610
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->checkOutputPortsConform(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    goto :goto_0

    .line 612
    :cond_0
    return-void
.end method

.method private recursiveTearDown()V
    .locals 3

    .prologue
    .line 652
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphsTearDownLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 654
    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->recursiveTearDown()V

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->tearDownGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 661
    :cond_1
    return-void
.end method


# virtual methods
.method public attachToRunner(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 329
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->attachToRunner(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->attachGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 332
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 337
    :cond_1
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eq v0, p1, :cond_1

    .line 334
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot attach FilterGraph to GraphRunner that is already attached to another GraphRunner!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindFilterToView(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 465
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/libraries/smartburst/filterfw/ViewFilter;

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/ViewFilter;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/smartburst/filterfw/ViewFilter;->bindToView(Landroid/view/View;)V

    return-void

    .line 468
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown view filter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindValueTarget(Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ValueTarget$ValueListener;Z)V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 477
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ValueTarget;

    if-eqz v1, :cond_0

    .line 478
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ValueTarget;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ValueTarget;->setListener(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/ValueTarget$ValueListener;Z)V

    return-void

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown ValueTarget filter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkSignatures()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->checkSignaturesForFilters(Ljava/util/Collection;)V

    .line 584
    return-void
.end method

.method public dumpGraphState(Ljava/io/PrintWriter;)V
    .locals 16

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilters:[Lcom/google/android/libraries/smartburst/filterfw/Filter;

    array-length v7, v6

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v7, :cond_7

    aget-object v8, v6, v5

    .line 509
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getConnectedInputPorts()[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v10, :cond_3

    aget-object v11, v9, v4

    .line 511
    invoke-virtual {v11}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->hasFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "X"

    .line 512
    :goto_2
    invoke-virtual {v11}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->waitsForFrame()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v11}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->hasFrame()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " (BLOCKED)"

    .line 513
    :goto_3
    invoke-virtual {v11}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getSourceHint()Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v3

    .line 514
    if-eqz v3, :cond_2

    .line 515
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getFilter()Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "]"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    :goto_4
    invoke-virtual {v11}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "  IN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " =["

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]=> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    .line 511
    :cond_0
    const-string v1, " "

    goto/16 :goto_2

    .line 512
    :cond_1
    const-string v2, ""

    goto/16 :goto_3

    .line 516
    :cond_2
    const-string v3, "<unknown source>"

    goto :goto_4

    .line 520
    :cond_3
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getConnectedOutputPorts()[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v4

    array-length v8, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_5
    if-ge v3, v8, :cond_6

    aget-object v9, v4, v3

    .line 521
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " "

    .line 522
    :goto_6
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getTarget()Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v2

    .line 523
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getFilter()Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "]"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 525
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->waitsUntilAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, " (BLOCKED)"

    .line 527
    :goto_7
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "  OUT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " =["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]=> "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_5

    .line 521
    :cond_4
    const-string v1, "X"

    goto/16 :goto_6

    .line 526
    :cond_5
    const-string v2, ""

    goto :goto_7

    .line 508
    :cond_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    .line 531
    :cond_7
    return-void
.end method

.method flushFrames()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 631
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 632
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getConnectedInputPorts()[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 633
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->clear()V

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getConnectedOutputPorts()[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 636
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->clear()V

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 639
    :cond_2
    return-void
.end method

.method public getAllFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->addAllFiltersTo(Ljava/util/ArrayList;)V

    .line 394
    return-object v0
.end method

.method public getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    return-object v0
.end method

.method public getFilters()[Lcom/google/android/libraries/smartburst/filterfw/Filter;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilters:[Lcom/google/android/libraries/smartburst/filterfw/Filter;

    return-object v0
.end method

.method public getGraphInput(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 445
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;

    if-eqz v1, :cond_0

    .line 446
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;

    return-object v0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' specified!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGraphOutput(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 430
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;

    if-eqz v1, :cond_0

    .line 431
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;

    return-object v0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown target \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' specified!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    .line 561
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->attachToRunner(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    return-object v0
.end method

.method getSubGraphs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphs:Ljava/util/HashSet;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 415
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    if-eqz v1, :cond_0

    .line 416
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    return-object v0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' specified!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubGraph()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mParentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    .line 545
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->setIsVerbose(Z)V

    .line 546
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->start(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 547
    return-object v0
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mParentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to tear down sub-graph!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->recursiveTearDown()V

    .line 361
    return-void
.end method

.method wipe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphsTearDownLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mSubGraphs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 622
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->removeGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 625
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilters:[Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 626
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mFilterMap:Ljava/util/HashMap;

    .line 627
    iput-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mParentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 628
    return-void

    .line 622
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
