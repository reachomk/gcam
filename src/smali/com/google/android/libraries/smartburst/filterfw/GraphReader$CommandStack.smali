.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;
.super Ljava/lang/Object;
.source "GraphReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CommandStack"
.end annotation


# instance fields
.field private mBuilder:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

.field private final mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

.field private mFactory:Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;

.field private mGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

.field private final mPostCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V
    .locals 2

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mCommands:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mPostCommands:Ljava/util/ArrayList;

    .line 295
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    .line 296
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mBuilder:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    .line 297
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mFactory:Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;

    .line 298
    return-void
.end method


# virtual methods
.method public append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public compileToBuilder(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mCommands:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;

    .line 327
    iget-object v5, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-interface {v1, v5, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;->compileToJava(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mPostCommands:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;

    .line 330
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    invoke-interface {v1, v4, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;->compileToJava(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V

    goto :goto_1

    .line 332
    :cond_1
    return-void
.end method

.method public compileToJava(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;

    invoke-direct {v0, p2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->mainGraphFactory()Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->compileToBuilder(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;)V

    .line 322
    invoke-virtual {v0, p1, p3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->writeSourceCode(Ljava/lang/String;Ljava/io/Writer;)V

    .line 323
    return-void
.end method

.method public execute(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mCommands:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;

    .line 303
    invoke-interface {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;->execute(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V

    goto :goto_0

    .line 306
    :cond_0
    if-nez p1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mBuilder:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->build()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mPostCommands:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;

    .line 313
    invoke-interface {v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;->execute(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V

    goto :goto_2

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mBuilder:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;->buildSubGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    goto :goto_1

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    return-object v0
.end method

.method protected getBuilder()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mBuilder:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph$Builder;

    return-object v0
.end method

.method public getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    return-object v0
.end method

.method public getFactory()Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mFactory:Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;

    return-object v0
.end method

.method public getGraph()Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    return-object v0
.end method

.method public postAppend(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->mPostCommands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method
