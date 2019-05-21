.class final Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask$1;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "GenerateSingleArtifactTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;->process(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Landroid/location/Location;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask$1;->this$0:Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    check-cast p1, Lcom/google/common/base/Optional;

    .line 1162
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask$1;->this$0:Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;

    invoke-static {v0}, Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;->access$000(Lcom/android/camera/burst/postprocessing/GenerateSingleArtifactTask;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 159
    return-void
.end method
