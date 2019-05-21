.class public final Lcom/google/android/libraries/smartburst/integration/ComponentFactory;
.super Ljava/lang/Object;
.source "ComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;,
        Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;,
        Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;
    }
.end annotation


# instance fields
.field private final mCreatedObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstantiatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/integration/Instantiator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mMakeStack:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverridesAllowed:Z

.field private final mWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mInstantiatorMap:Ljava/util/Map;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mCreatedObjectMap:Ljava/util/Map;

    .line 69
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mWrappers:Ljava/util/List;

    .line 1164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mMakeStack:Ljava/util/HashSet;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mOverridesAllowed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->getTypeKey(Lcom/google/common/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->demoteInstantiators(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mInstantiatorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mCreatedObjectMap:Ljava/util/Map;

    return-object v0
.end method

.method private final demoteInstantiators(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mInstantiatorMap:Ljava/util/Map;

    .line 305
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/integration/Instantiator;

    .line 306
    if-eqz v0, :cond_1

    .line 308
    iget-boolean v2, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mOverridesAllowed:Z

    if-nez v2, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempting to override "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but overrides have been disallowed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":original"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-direct {p0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->demoteInstantiators(Ljava/lang/String;)V

    .line 317
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    return-void
.end method

.method private static getTypeKey(Lcom/google/common/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private make(Lcom/google/common/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 120
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->getTypeKey(Lcom/google/common/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mMakeStack:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":original"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mMakeStack:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mCreatedObjectMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    if-nez v1, :cond_4

    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mInstantiatorMap:Ljava/util/Map;

    .line 133
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/integration/Instantiator;

    .line 134
    if-nez v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to find instantiator for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    invoke-interface {v0, p0}, Lcom/google/android/libraries/smartburst/integration/Instantiator;->create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    if-nez v0, :cond_2

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Instantiator for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns a null reference!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 148
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;

    .line 149
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;->getWrappedClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 151
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;->getInstanceWrapper()Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;

    move-result-object v0

    .line 152
    invoke-interface {v0, v1, p2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;->wrap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 154
    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mCreatedObjectMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mMakeStack:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 159
    return-object v1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final allowOverrides()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mOverridesAllowed:Z

    .line 203
    return-void
.end method

.method public final disallowOverrides()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mOverridesAllowed:Z

    .line 196
    return-void
.end method

.method public final getConfigWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$2;-><init>(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)V

    return-object v0
.end method

.method public final make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Lcom/google/common/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whenRequest(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 263
    const-string v0, "default"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    move-result-object v0

    return-object v0
.end method

.method public final whenRequest(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1217
    new-instance v1, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WhenRequestStubbing;-><init>(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/common/reflect/TypeToken;Ljava/lang/String;)V

    .line 239
    return-object v1
.end method

.method public final wrapInstances(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 178
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mWrappers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;->getWrappedClass()Ljava/lang/Class;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->mWrappers:Ljava/util/List;

    new-instance v2, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;

    invoke-direct {v2, p1, p2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory$WrapperElement;-><init>(Ljava/lang/Class;Lcom/google/android/libraries/smartburst/integration/ComponentFactory$InstanceWrapper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    return-void

    .line 178
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
