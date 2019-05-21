.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;
.source "IterateFilter.java"


# instance fields
.field mIndex:I

.field mInputArraySize:I

.field mInputsArray:Ljava/lang/Object;

.field mOutputs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 20
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mIndex:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputsArray:Ljava/lang/Object;

    .line 22
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputArraySize:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mOutputs:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method private initializeInputsAndOutputs(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputsArray:Ljava/lang/Object;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mIndex:I

    .line 147
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputsArray:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputArraySize:I

    .line 148
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mOutputs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 149
    return-void
.end method

.method private setOutputForPortAtIndex(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mOutputs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputArraySize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mOutputs:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    invoke-static {v0, p3, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected assignInputs()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mGraphProvider:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$FilterGraphProvider;->getFilterGraph(Ljava/util/HashMap;)Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 78
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "array"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputsArray:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/Frame;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValues()Lcom/google/android/libraries/smartburst/filterfw/FrameValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValues;->getValues()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->initializeInputsAndOutputs(Ljava/lang/Object;)V

    .line 86
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputArraySize:I

    if-lez v1, :cond_5

    .line 87
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    const-string v2, "elem"

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getGraphInput(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;

    move-result-object v4

    .line 88
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputsArray:Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mIndex:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 91
    const/4 v1, 0x1

    .line 97
    :goto_1
    if-eqz v2, :cond_0

    .line 98
    if-nez v4, :cond_3

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' could not be mapped to any input in the filter graph!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getGraphInput(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;

    move-result-object v4

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move v7, v2

    move-object v2, v1

    move v1, v7

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphInputSource;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 103
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    goto/16 :goto_0

    .line 108
    :cond_4
    return-void

    :cond_5
    move v1, v2

    move-object v4, v3

    move-object v2, v3

    goto :goto_1
.end method

.method protected assignOutputs()V
    .locals 7

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->getConnectedOutputPorts()[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 112
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getName()Ljava/lang/String;

    move-result-object v3

    .line 113
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mCurrentGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->getGraphOutput(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v5

    .line 115
    if-nez v5, :cond_0

    .line 117
    const-string v3, "IterateFilter"

    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Output \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has no frame!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 120
    iget v6, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mIndex:I

    invoke-direct {p0, v4, v3, v6}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->setOutputForPortAtIndex(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 121
    invoke-virtual {v5}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    goto :goto_1

    .line 125
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mIndex:I

    .line 126
    return-void
.end method

.method protected clearInputs()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    return-void
.end method

.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v1, "array"

    const/4 v2, 0x2

    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    return-object v0
.end method

.method protected onProcess()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    if-nez v0, :cond_2

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputsArray:Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->pullInputs()V

    .line 43
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputArraySize:I

    if-lez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->processGraph()V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->pushOutputs()V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->assignOutputs()V

    .line 50
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mIndex:I

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputArraySize:I

    if-ge v0, v1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->assignInputs()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->processGraph()V

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->pushOutputs()V

    goto :goto_0
.end method

.method protected pullInputs()V
    .locals 6

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->clearInputs()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->getConnectedInputPorts()[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 70
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputFrames:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->retain()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->assignInputs()V

    .line 73
    return-void
.end method

.method protected pushOutputs()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->getConnectedOutputPorts()[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 131
    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getName()Ljava/lang/String;

    move-result-object v5

    .line 132
    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mOutputs:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 134
    if-eqz v5, :cond_0

    .line 135
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [I

    iget v8, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mInputArraySize:I

    aput v8, v7, v1

    invoke-static {v6, v7}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v6

    .line 136
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValues()Lcom/google/android/libraries/smartburst/filterfw/FrameValues;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameValues;->setValues(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v4, v6}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 138
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/IterateFilter;->mState:Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;

    iput v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    .line 142
    return-void
.end method
