.class final Lcom/android/camera/ui/wirers/GridLinesUiWirer$1;
.super Ljava/lang/Object;
.source "GridLinesUiWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/wirers/GridLinesUiWirer;->wire()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$gridLinesUi:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/ui/wirers/GridLinesUiWirer$1;->val$gridLinesUi:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 46
    check-cast p1, Ljava/lang/Integer;

    .line 1049
    iget-object v0, p0, Lcom/android/camera/ui/wirers/GridLinesUiWirer$1;->val$gridLinesUi:Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;->fromInt(I)Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;->animateTo(Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$Mode;)V

    .line 46
    return-void
.end method
