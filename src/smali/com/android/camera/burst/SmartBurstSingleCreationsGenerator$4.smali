.class final Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator$4;
.super Ljava/lang/Object;
.source "SmartBurstSingleCreationsGenerator.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/SmartBurstSingleCreationsGenerator;->getAvailableCreationTypes()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/android/camera/burst/postprocessing/CreationType;",
        "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/burst/postprocessing/CreationType;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    check-cast p1, Ljava/util/Map;

    .line 1184
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 179
    return-object v0
.end method
