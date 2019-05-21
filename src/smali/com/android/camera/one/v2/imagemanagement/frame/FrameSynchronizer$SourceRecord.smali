.class final Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;
.super Ljava/lang/Object;
.source "FrameSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceRecord"
.end annotation


# instance fields
.field private final processedImages:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/camera/one/v2/core/ImageId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;->processedImages:Ljava/util/TreeSet;

    .line 71
    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;)Ljava/util/TreeSet;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameSynchronizer$SourceRecord;->processedImages:Ljava/util/TreeSet;

    return-object v0
.end method
