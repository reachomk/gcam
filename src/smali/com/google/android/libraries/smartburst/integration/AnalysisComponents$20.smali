.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$20;
.super Ljava/lang/Object;
.source "AnalysisComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/integration/AnalysisComponents;->configure(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;Lcom/google/android/libraries/smartburst/filterfw/MffContext;Lcom/google/android/libraries/smartburst/integration/BurstMode;[Lcom/google/android/libraries/smartburst/filterfw/GraphFactory;Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/media/BitmapAllocator;Ljava/util/EnumSet;I)V
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
.field private synthetic val$features:Ljava/util/EnumSet;

.field private synthetic val$maxVideoTimeInMin:I


# direct methods
.method constructor <init>(ILjava/util/EnumSet;)V
    .locals 0

    .prologue
    .line 386
    iput p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$20;->val$maxVideoTimeInMin:I

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$20;->val$features:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/high16 v6, 0x41f00000    # 30.0f

    .line 386
    .line 1389
    iget v0, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$20;->val$maxVideoTimeInMin:I

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$20;->val$features:Ljava/util/EnumSet;

    .line 2217
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-float v0, v2

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 2218
    new-instance v2, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;

    invoke-direct {v2, v1, v0, v6}, Lcom/google/android/libraries/smartburst/buffers/DenseFeatureTable;-><init>(Ljava/util/EnumSet;IF)V

    .line 386
    return-object v2
.end method
