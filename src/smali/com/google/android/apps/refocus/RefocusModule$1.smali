.class final Lcom/google/android/apps/refocus/RefocusModule$1;
.super Ljava/lang/Object;
.source "RefocusModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/refocus/RefocusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/refocus/RefocusModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$1;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$1;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule$1;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$400(Lcom/google/android/apps/refocus/RefocusModule;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$500(Lcom/google/android/apps/refocus/RefocusModule;ZLandroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$1;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule$1;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    invoke-static {v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$600(Lcom/google/android/apps/refocus/RefocusModule;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/apps/refocus/RefocusModule;->access$500(Lcom/google/android/apps/refocus/RefocusModule;ZLandroid/view/View;)V

    .line 218
    return-void
.end method
