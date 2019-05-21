.class final Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$1;
.super Ljava/lang/Object;
.source "TuningDataWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->processTuningData(Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

.field private synthetic val$tuningData:Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$1;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$1;->val$tuningData:Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$1;->this$0:Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter$1;->val$tuningData:Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;->access$000(Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningData;)V

    .line 75
    return-void
.end method
