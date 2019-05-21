.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$13;
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
        "Lcom/google/android/libraries/smartburst/media/JpegConversionProcessor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$summaryDirectory:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$13;->val$summaryDirectory:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 298
    .line 1302
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$13;->val$summaryDirectory:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    new-instance v1, Lcom/google/android/libraries/smartburst/media/JpegConversionProcessor;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$13;->val$summaryDirectory:Lcom/google/common/util/concurrent/ListenableFuture;

    const-class v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    .line 2085
    const-string v3, "default"

    invoke-virtual {p1, v0, v3}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1305
    check-cast v0, Lcom/google/android/libraries/smartburst/media/SummaryBuilder;

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/smartburst/media/JpegConversionProcessor;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/libraries/smartburst/media/SummaryBuilder;)V

    .line 298
    return-object v1
.end method
