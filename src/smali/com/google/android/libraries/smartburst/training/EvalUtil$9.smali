.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$9;
.super Ljava/lang/Object;
.source "EvalUtil.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/training/EvalUtil;->injectCaptureLogging(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
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
        "Lcom/google/android/libraries/smartburst/buffers/FeatureTable;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$9;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 179
    .line 1182
    const-class v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 2085
    const-string v1, "default"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1182
    check-cast v0, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 1183
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getFeatureTableCsvWriter(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)Lcom/google/android/libraries/smartburst/training/LogWriter;

    move-result-object v1

    .line 1185
    new-instance v2, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 3157
    sget-object v3, Lcom/google/android/libraries/smartburst/utils/FeatureType;->TEST_FEATURE_1:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v4, Lcom/google/android/libraries/smartburst/utils/FeatureType;->TEST_FEATURE_2:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    sget-object v5, Lcom/google/android/libraries/smartburst/utils/FeatureType;->TEST_MULTIDIMENSIONAL_FEATURE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 2229
    invoke-static {v3}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v3

    .line 1185
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;->getStatsWriter(Ljava/util/Set;)Lcom/google/android/libraries/smartburst/training/LogWriter;

    move-result-object v2

    .line 1187
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$9;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    const-string v4, "features.csv"

    invoke-virtual {v3, v4, v1}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 1188
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$9;->val$logWriter:Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;

    const-string v3, "feature_stats.txt"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/libraries/smartburst/training/LogCollectionWriter;->addLogWriter(Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/LogWriter;)V

    .line 179
    return-object v0
.end method
