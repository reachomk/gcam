.class Lcom/android/camera/stats/UsageStatistics$2;
.super Ljava/lang/Object;
.source "UsageStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/UsageStatistics;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/stats/UsageStatistics;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/UsageStatistics;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/stats/UsageStatistics$2;->this$0:Lcom/android/camera/stats/UsageStatistics;

    iput-object p2, p0, Lcom/android/camera/stats/UsageStatistics$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics$2;->this$0:Lcom/android/camera/stats/UsageStatistics;

    new-instance v1, Lcom/android/camera/stats/AuthorStatsHelperNoOpImpl;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/stats/AuthorStatsHelperNoOpImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->access$002(Lcom/android/camera/stats/UsageStatistics;Lcom/android/camera/stats/AuthorStatsHelper;)Lcom/android/camera/stats/AuthorStatsHelper;

    .line 183
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics$2;->this$0:Lcom/android/camera/stats/UsageStatistics;

    iget-object v1, p0, Lcom/android/camera/stats/UsageStatistics$2;->this$0:Lcom/android/camera/stats/UsageStatistics;

    iget-object v2, p0, Lcom/android/camera/stats/UsageStatistics$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/camera/stats/UsageStatistics;->access$200(Lcom/android/camera/stats/UsageStatistics;Landroid/content/Context;)Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->access$102(Lcom/android/camera/stats/UsageStatistics;Lcom/android/camera/stats/clearcut/GcaClearcutLogger;)Lcom/android/camera/stats/clearcut/GcaClearcutLogger;

    .line 184
    return-void
.end method
