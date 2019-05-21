.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$39;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<",
        "Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1032
    .line 2035
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2035
    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2036
    const-class v1, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 3085
    const-string v3, "default"

    invoke-virtual {p1, v1, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2036
    check-cast v1, Lcom/google/android/libraries/smartburst/media/Summary;

    .line 2037
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/media/Summary;->getSortedTimestamps()Ljava/util/List;

    move-result-object v3

    .line 2038
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 2039
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2040
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2039
    invoke-static {v0, v4, v5, v2, v3}, Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;->createFrom(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;JJ)Lcom/google/android/libraries/smartburst/filterpacks/motion/MotionStabilizer;

    move-result-object v0

    .line 1032
    return-object v0

    :cond_0
    move v1, v2

    .line 2038
    goto :goto_0
.end method
