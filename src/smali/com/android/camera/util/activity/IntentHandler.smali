.class public Lcom/android/camera/util/activity/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"

# interfaces
.implements Lcom/android/camera/util/activity/IntentResultSender;
.implements Lcom/android/camera/util/activity/IntentStarter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    iput-object p1, p0, Lcom/android/camera/util/activity/IntentHandler;->activity:Landroid/app/Activity;

    .line 2028
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/camera/util/activity/IntentHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1038
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    iget-object v0, p0, Lcom/android/camera/util/activity/IntentHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1040
    return-void
.end method

.method public setResult(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2049
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    iget-object v0, p0, Lcom/android/camera/util/activity/IntentHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2051
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2055
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    iget-object v0, p0, Lcom/android/camera/util/activity/IntentHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2057
    return-void
.end method
