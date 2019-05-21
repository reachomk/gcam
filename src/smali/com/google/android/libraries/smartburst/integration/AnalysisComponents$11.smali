.class final Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$11;
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
        "Lcom/google/android/libraries/smartburst/media/BitmapAllocator;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/media/BitmapAllocator;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$11;->val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    .line 1276
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/integration/AnalysisComponents$11;->val$bitmapAllocator:Lcom/google/android/libraries/smartburst/media/BitmapAllocator;

    .line 273
    return-object v0
.end method
