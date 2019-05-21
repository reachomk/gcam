.class public Lcom/android/camera/stats/AuthorStatsHelperImpl;
.super Ljava/lang/Object;
.source "AuthorStatsHelperImpl.java"

# interfaces
.implements Lcom/android/camera/stats/AuthorStatsHelper;


# static fields
.field private static final AUTHORED_ITEMS:Ljava/lang/String; = "authored_items_titles"

.field private static final AUTHORED_START_SECONDS:Ljava/lang/String; = "authored_items_time0"

.field private static final DAYS_PER_SECOND:F = 1.1574074E-5f

.field private static final SEARCH_ITEMS_MAX_COUNT:I = 0xc8

.field private static final SEARCH_ITEMS_MAX_DAYS:J = 0x1cL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private dcimItemsTotalCount:I

.field private preferences:Landroid/content/SharedPreferences;

.field private recentDcimItemsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchStartSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "AuthorStats"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->dcimItemsTotalCount:I

    .line 38
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    .line 49
    iput-object p1, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->context:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->preferences:Landroid/content/SharedPreferences;

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 56
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "authored_items_time0"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 59
    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "authored_items_time0"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v0, v2

    .line 65
    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1c

    .line 66
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->searchStartSeconds:J

    .line 67
    return-void
.end method


# virtual methods
.method public declared-synchronized itemDeleted(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanMediaStore()V
    .locals 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date_added"

    aput-object v1, v2, v0

    .line 83
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data LIKE \'%DCIM%\'"

    const/4 v4, 0x0

    const-string v5, "date_added DESC"

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 92
    if-nez v2, :cond_1

    .line 93
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->dcimItemsTotalCount:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 112
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->dcimItemsTotalCount:I

    .line 99
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const-string v0, "_display_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 101
    const-string v0, "date_added"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move v0, v8

    .line 104
    :goto_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 106
    iget-wide v12, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->searchStartSeconds:J

    cmp-long v1, v10, v12

    if-lez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_4

    move v1, v0

    move v0, v7

    .line 107
    :goto_2
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 108
    iget-object v9, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_7

    .line 112
    :cond_3
    if-eqz v2, :cond_0

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v1, v0

    move v0, v8

    .line 106
    goto :goto_2

    .line 83
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    :catchall_1
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_3
    if-eqz v2, :cond_5

    if-eqz v1, :cond_6

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :goto_4
    :try_start_7
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized updateAuthorshipStats(Ljava/lang/String;)Lcom/android/camera/stats/AuthorStats;
    .locals 6

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/stats/AuthorStatsHelperImpl;->scanMediaStore()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "authored_items_titles"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "authored_items_titles"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->searchStartSeconds:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const v2, 0x37422e45

    mul-float/2addr v0, v2

    .line 156
    new-instance v2, Lcom/android/camera/stats/AuthorStats;

    iget-object v3, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->recentDcimItemsSet:Ljava/util/Set;

    .line 157
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v4, p0, Lcom/android/camera/stats/AuthorStatsHelperImpl;->dcimItemsTotalCount:I

    int-to-float v4, v4

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/camera/stats/AuthorStats;-><init>(FIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-object v2

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
