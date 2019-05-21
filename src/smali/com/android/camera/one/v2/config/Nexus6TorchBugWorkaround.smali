.class public Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;
.super Ljava/lang/Object;
.source "Nexus6TorchBugWorkaround.java"

# interfaces
.implements Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround$TorchResetCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;"
    }
.end annotation


# instance fields
.field private final fixedFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldUseVariableFpsRange:Z

.field private final variableFpsRange:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Range;Lcom/google/common/base/Optional;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->fixedFpsRange:Landroid/util/Range;

    .line 1027
    iput-object p2, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->variableFpsRange:Lcom/google/common/base/Optional;

    .line 1028
    iput-boolean p3, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->shouldUseVariableFpsRange:Z

    .line 1029
    return-void
.end method


# virtual methods
.method public getPreviewFpsRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->shouldUseVariableFpsRange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->variableFpsRange:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->variableFpsRange:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 1037
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->fixedFpsRange:Landroid/util/Range;

    goto :goto_0
.end method

.method public getRecordFpsRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->shouldUseVariableFpsRange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->variableFpsRange:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->variableFpsRange:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 1046
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/config/Nexus6TorchBugWorkaround;->fixedFpsRange:Landroid/util/Range;

    goto :goto_0
.end method
