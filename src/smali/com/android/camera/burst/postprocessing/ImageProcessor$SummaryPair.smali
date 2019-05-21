.class final Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/postprocessing/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryPair"
.end annotation


# instance fields
.field public final inMemSummary:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;"
        }
    .end annotation
.end field

.field public final onDiskSummary:Lcom/google/android/libraries/smartburst/media/Summary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/media/Summary;Lcom/google/android/libraries/smartburst/media/Summary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;",
            "Lcom/google/android/libraries/smartburst/media/Summary",
            "<",
            "Lcom/android/camera/burst/HiResImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;->inMemSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 124
    iput-object p2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;->onDiskSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    .line 125
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;->inMemSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->close()V

    .line 130
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SummaryPair;->onDiskSummary:Lcom/google/android/libraries/smartburst/media/Summary;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/media/Summary;->close()V

    .line 131
    return-void
.end method
