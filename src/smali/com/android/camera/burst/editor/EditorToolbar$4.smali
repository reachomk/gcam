.class final Lcom/android/camera/burst/editor/EditorToolbar$4;
.super Ljava/lang/Object;
.source "EditorToolbar.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/EditorToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/EditorToolbar;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/EditorToolbar;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/burst/editor/EditorToolbar$4;->this$0:Lcom/android/camera/burst/editor/EditorToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 162
    const v1, 0x7f1101a0

    if-ne v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar$4;->this$0:Lcom/android/camera/burst/editor/EditorToolbar;

    invoke-static {v0}, Lcom/android/camera/burst/editor/EditorToolbar;->access$000(Lcom/android/camera/burst/editor/EditorToolbar;)Lcom/android/camera/burst/editor/EditorToolbar$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/editor/EditorToolbar$Listener;->onToolbarShareClicked()V

    .line 167
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_1
    const v1, 0x7f1101a1

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar$4;->this$0:Lcom/android/camera/burst/editor/EditorToolbar;

    invoke-static {v0}, Lcom/android/camera/burst/editor/EditorToolbar;->access$000(Lcom/android/camera/burst/editor/EditorToolbar;)Lcom/android/camera/burst/editor/EditorToolbar$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/editor/EditorToolbar$Listener;->onToolbarDeleteClicked()V

    goto :goto_0
.end method
