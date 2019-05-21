.class public Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;
.super Ljava/lang/Object;
.source "FilterGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    .line 89
    return-void
.end method

.method private buildWithParent(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 3

    .prologue
    .line 281
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$1;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->access$102(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 284
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-static {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->access$202(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;[Lcom/google/android/libraries/smartburst/filterfw/Filter;)[Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 285
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->insertIntoFilterGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    goto :goto_0

    .line 288
    :cond_0
    return-object v1
.end method

.method private checkSignatures()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->checkSignaturesForFilters(Ljava/util/Collection;)V

    .line 293
    return-void
.end method

.method private connectAndBranch(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Branch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    .line 304
    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/BranchFilter;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/BranchFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 307
    const-string v1, "input"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->connect(Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->connect(Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 311
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to add filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that is in the graph already!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Graph contains filter with name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public addFrameSlotSource(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/FrameSlotSource;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/FrameSlotSource;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/FrameSlotSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 137
    return-object v0
.end method

.method public addFrameSlotTarget(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/FrameSlotTarget;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/FrameSlotTarget;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/FrameSlotTarget;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 143
    return-object v0
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Filter named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists already!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {v0, v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 128
    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;->setValue(Ljava/lang/Object;)V

    .line 131
    :cond_1
    return-object v0
.end method

.method public assignValueToFilterInput(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;
    .locals 5

    .prologue
    .line 218
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown filter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VariableSource for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and input \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists already!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {v2, v3, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->addFilter(Lcom/google/android/libraries/smartburst/filterfw/Filter;)V

    .line 234
    :try_start_0
    const-string v1, "value"

    invoke-virtual {v2, v1, v0, p3}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->connect(Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;->setValue(Ljava/lang/Object;)V

    .line 245
    :cond_2
    return-object v2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3a

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not connect VariableSource to input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of filter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public assignVariableToFilterInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v1

    .line 253
    if-nez v1, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown filter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    if-nez v2, :cond_2

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown variable \'"

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

    .line 265
    :cond_2
    :try_start_0
    const-string v2, "value"

    invoke-direct {p0, v0, v2, v1, p3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connectAndBranch(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/VariableSource;

    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3a

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not connect VariableSource to input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of filter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public build()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->checkSignatures()V

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->buildWithParent(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    return-object v0
.end method

.method public buildSubGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 2

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parent graph must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->checkSignatures()V

    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->buildWithParent(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->connect(Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    .line 158
    invoke-virtual {p0, p3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v1

    .line 159
    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown filter \'"

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

    .line 161
    :cond_0
    if-nez v1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown filter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    invoke-virtual {p0, v0, p2, v1, p4}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->connect(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Filter;

    return-object v0
.end method
