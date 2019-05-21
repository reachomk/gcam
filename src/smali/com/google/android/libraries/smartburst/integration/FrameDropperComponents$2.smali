.class final Lcom/google/android/libraries/smartburst/integration/FrameDropperComponents$2;
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
        "Lcom/google/android/libraries/smartburst/scoring/FrameScorer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 140
    .line 1143
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1143
    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1144
    new-instance v1, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFeatureScorerProvider;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFeatureScorerProvider;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    const-class v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    const-string v2, "camera_motion_score"

    .line 1146
    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 1144
    invoke-static {v1, v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScorer(Lcom/google/android/libraries/smartburst/scoring/FeatureScorerProvider;Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    move-result-object v0

    .line 140
    return-object v0
.end method
