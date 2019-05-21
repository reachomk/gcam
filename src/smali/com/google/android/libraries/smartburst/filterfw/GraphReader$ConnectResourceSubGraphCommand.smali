.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;
.super Ljava/lang/Object;
.source "GraphReader.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectResourceSubGraphCommand"
.end annotation


# instance fields
.field private final mFilterName:Ljava/lang/String;

.field private final mResourceName:Ljava/lang/String;

.field private final mResourceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mFilterName:Ljava/lang/String;

    .line 438
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    .line 439
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceType:Ljava/lang/String;

    .line 440
    return-void
.end method

.method private resourceIdForName(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 486
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/MffContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 488
    sget v2, Lcom/google/android/libraries/smartburst/filterfw/R$id;->used_for_subgraph_package_name_retrieval:I

    .line 489
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 492
    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceType:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unknown graph resource \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' of type \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    return v0
.end method

.method private static toCamelCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 500
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 501
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_2

    .line 502
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 503
    aget-object v2, v3, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget-object v2, v3, v0

    const/4 v5, 0x1

    .line 504
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v3, v0

    .line 501
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 507
    :cond_2
    const-string v0, ""

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compileToJava(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V
    .locals 5

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->toCamelCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->newSubBuilder(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->resourceIdForName(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)I

    move-result v2

    .line 476
    :try_start_0
    invoke-static {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader;->access$100(Lcom/google/android/libraries/smartburst/filterfw/MffContext;I)Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->compileToBuilder(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    const-string v1, "((MetaFilter) %s).setGraph(new %s(graph).create(context));"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mFilterName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->addPostBuildCommand(Ljava/lang/String;)V

    .line 483
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not load sub-graph \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V
    .locals 5

    .prologue
    .line 449
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->resourceIdForName(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)I

    move-result v0

    .line 454
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->getGraph()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader;->readXmlSubGraphResource(Lcom/google/android/libraries/smartburst/filterfw/MffContext;ILcom/google/android/libraries/smartburst/filterfw/FilterGraph;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 460
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->getGraph()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mFilterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getFilter(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v0

    .line 461
    instance-of v2, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;

    if-eqz v2, :cond_0

    .line 462
    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;

    .line 463
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->setGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    .line 464
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mResourceName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not load sub-graph \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;->mFilterName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to load sub-graph into non-MetaFilter \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
