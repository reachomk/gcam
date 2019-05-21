.class public Lcom/android/camera/stats/AuthorStatsHelperNoOpImpl;
.super Ljava/lang/Object;
.source "AuthorStatsHelperNoOpImpl.java"

# interfaces
.implements Lcom/android/camera/stats/AuthorStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized itemDeleted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized scanMediaStore()V
    .locals 0

    .prologue
    .line 22
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateAuthorshipStats(Ljava/lang/String;)Lcom/android/camera/stats/AuthorStats;
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method
