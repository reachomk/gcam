.class final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ArtifactStackToMapFunction;
.super Ljava/lang/Object;
.source "SmartBurstSingleCreationsGenerator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArtifactStackToMapFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;",
        "Ljava/util/Map",
        "<",
        "Lcom/android/camera/burst/postprocessing/CreationType;",
        "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$ArtifactStackToMapFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 224
    check-cast p1, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;

    .line 1230
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1231
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/artifacts/Artifact;

    .line 1232
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/burst/postprocessing/CreationType;->fromArtifactType(Ljava/lang/String;)Lcom/android/camera/burst/postprocessing/CreationType;

    move-result-object v3

    .line 1236
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1237
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_1
    return-object v1
.end method
