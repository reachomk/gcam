.class final Lcom/android/camera/burst/editor/BurstEditorFragment$9;
.super Ljava/lang/Object;
.source "BurstEditorFragment.java"

# interfaces
.implements Lcom/android/camera/burst/editor/grid/SelectionController$OnSelectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/editor/BurstEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/BurstEditorFragment;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$9;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectionCountChanged$514IILG_()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/burst/editor/BurstEditorFragment$9;->this$0:Lcom/android/camera/burst/editor/BurstEditorFragment;

    invoke-static {v0}, Lcom/android/camera/burst/editor/BurstEditorFragment;->access$700(Lcom/android/camera/burst/editor/BurstEditorFragment;)V

    .line 287
    return-void
.end method
