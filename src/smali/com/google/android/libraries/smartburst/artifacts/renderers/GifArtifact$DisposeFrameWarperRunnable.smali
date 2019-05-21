.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$DisposeFrameWarperRunnable;
.super Ljava/lang/Object;
.source "GifArtifact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisposeFrameWarperRunnable"
.end annotation


# instance fields
.field private final mFrameWarper:Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$DisposeFrameWarperRunnable;->mFrameWarper:Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;

    .line 359
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/GifArtifact$DisposeFrameWarperRunnable;->mFrameWarper:Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/motion/FrameWarper;->dispose()V

    .line 364
    return-void
.end method
