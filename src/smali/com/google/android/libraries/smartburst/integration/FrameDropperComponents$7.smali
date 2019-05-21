.class final Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$7;
.super Ljava/lang/Object;
.source "FrameDropperComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents;->configureAUC$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPMQOBIEHH7ASJJEGNMIRJKCLJN4OBKD5NMSBQ3DTMN0RRECLN78HJ1CDQ6USJP7D662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKLC___(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)V
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
        "Lcom/google/android/libraries/smartburst/selection/FrameDropper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 236
    .line 1239
    new-instance v2, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;

    new-instance v3, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;

    const-class v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-string v1, "FixedFrameRateSavingFrameDropper"

    .line 1241
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/selection/FrameDropper;

    const-class v1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v4, "default"

    invoke-virtual {p1, v1, v4}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1243
    check-cast v1, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/libraries/smartburst/selection/FeatureWaitingFrameDropper;-><init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;Lcom/google/android/libraries/smartburst/buffers/FeatureTable;I)V

    invoke-direct {v2, v3}, Lcom/google/android/libraries/smartburst/selection/InOrderTimestampFrameDropper;-><init>(Lcom/google/android/libraries/smartburst/selection/FrameDropper;)V

    .line 236
    return-object v2
.end method
