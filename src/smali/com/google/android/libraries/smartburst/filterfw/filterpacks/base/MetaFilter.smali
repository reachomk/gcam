.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "MetaFilter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$SubListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$DefaultGraphProvider;,
        Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;,
        Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

.field protected mGraphProvider:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;

.field protected mInputFrames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/Frame;",
            ">;"
        }
    .end annotation
.end field

.field protected final mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mInputFrames:Ljava/util/HashMap;

    .line 56
    return-void
.end method


# virtual methods
.method protected assignInput(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 150
    return-void
.end method

.method protected assignInputs()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mGraphProvider:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;->getFilterGraph(Ljava/util/HashMap;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mInputFrames:Ljava/util/HashMap;

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

    .line 143
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getGraphInput(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;

    move-result-object v1

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Frame;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->assignInput(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method protected canSchedule()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->schedulePolicy()Z

    move-result v0

    return v0
.end method

.method protected onClose()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    .line 94
    return-void
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    .line 79
    return-void
.end method

.method protected onProcess()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->pullInputs()V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->processGraph()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->pushOutputs()V

    goto :goto_0
.end method

.method public onSubGraphRunEnded(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    .line 157
    :cond_0
    return-void
.end method

.method protected processGraph()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    .line 128
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->current()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->enterSubGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$SubListener;)V

    .line 130
    return-void
.end method

.method protected pullInputs()V
    .locals 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->getConnectedInputPorts()[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 135
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->assignInputs()V

    .line 138
    return-void
.end method

.method protected pushOutput(Lcom/google/android/libraries/smartburst/filterfw/Frame;Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 124
    return-void
.end method

.method protected pushOutputs()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->getConnectedOutputPorts()[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 109
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getName()Ljava/lang/String;

    move-result-object v5

    .line 110
    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v6, v5}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getGraphOutput(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v5

    .line 112
    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {p0, v5, v4}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->pushOutput(Lcom/google/android/libraries/smartburst/filterfw/Frame;Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    .line 114
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    .line 120
    return-void
.end method

.method protected schedulePolicy()Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->inSchedulableState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->inputConditionsMet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->outputConditionsMet()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 102
    goto :goto_0
.end method

.method public setGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$DefaultGraphProvider;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$DefaultGraphProvider;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mGraphProvider:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set FilterGraphProvider while MetaFilter is running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGraphProvider(Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;->mGraphProvider:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set FilterGraphProvider while MetaFilter is running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
