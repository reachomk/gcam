.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$1;
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
        "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$videoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$1;->val$videoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    .line 1142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$1;->val$videoFrameProvider:Lcom/google/android/libraries/smartburst/filterfw/VideoFrameProvider;

    .line 138
    return-object v0
.end method
