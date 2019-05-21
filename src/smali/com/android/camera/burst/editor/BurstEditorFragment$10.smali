.class final Lcom/android/camera/burst/editor/BurstEditorFragment$10;
.super Ljava/lang/Object;
.source "BurstEditorFragment.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/BurstEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/android/camera/data/BurstFrameItem;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$10;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    .line 1293
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$10;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$800(Lcom/android/camera/burst/editor/BurstEditorFragment;)Lcom/android/camera/data/BurstFrameItem;

    move-result-object v0

    .line 290
    return-object v0
.end method
