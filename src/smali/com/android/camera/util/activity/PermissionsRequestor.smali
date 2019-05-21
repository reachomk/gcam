.class public Lcom/android/camera/util/activity/PermissionsRequestor;
.super Ljava/lang/Object;
.source "PermissionsRequestor.java"


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    iput-object p1, p0, Lcom/android/camera/util/activity/PermissionsRequestor;->activity:Landroid/app/Activity;

    .line 2018
    return-void
.end method


# virtual methods
.method public requestPermissions([Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1022
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v0, p0, Lcom/android/camera/util/activity/PermissionsRequestor;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1024
    return-void
.end method
