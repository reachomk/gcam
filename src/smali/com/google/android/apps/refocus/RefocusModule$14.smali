.class final Lcom/google/android/apps/refocus/RefocusModule$14;
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

.field private synthetic val$context:Landroid/content/Context;

.field private synthetic val$hasErrors:Z

.field private synthetic val$task:Lcom/google/android/apps/refocus/processing/DepthmapTask;


# direct methods
.method constructor <init>(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/processing/DepthmapTask;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 895
    iput-object p1, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    iput-object p2, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->val$task:Lcom/google/android/apps/refocus/processing/DepthmapTask;

    iput-object p3, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->val$hasErrors:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 898
    iget-object v0, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->this$0:Lcom/google/android/apps/refocus/RefocusModule;

    iget-object v1, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->val$task:Lcom/google/android/apps/refocus/processing/DepthmapTask;

    iget-object v2, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/google/android/apps/refocus/RefocusModule$14;->val$hasErrors:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/refocus/RefocusModule;->access$2200(Lcom/google/android/apps/refocus/RefocusModule;Lcom/google/android/apps/refocus/processing/DepthmapTask;Landroid/content/Context;Z)V

    .line 899
    return-void
.end method
