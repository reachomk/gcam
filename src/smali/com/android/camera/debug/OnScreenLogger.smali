.class public final Lcom/android/camera/debug/OnScreenLogger;
.super Ljava/lang/Object;
.source "OnScreenLogger.java"


# static fields
.field private static display$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHIM4TB75T7MSKR3E9IMARICDTJMEPBI4H7MSKR3E9IMARICDTJMEPBI8HKN6S3CC5SJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

.field private static parent:Landroid/view/ViewGroup;


# direct methods
.method public static attach(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isOnScreenLogEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    sput-object p0, Lcom/android/camera/debug/OnScreenLogger;->parent:Landroid/view/ViewGroup;

    .line 35
    sget-object v0, Lcom/android/camera/debug/OnScreenLogger;->display$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHIM4TB75T7MSKR3E9IMARICDTJMEPBI4H7MSKR3E9IMARICDTJMEPBI8HKN6S3CC5SJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    if-nez v0, :cond_2

    .line 36
    new-instance v0, Lcom/android/camera/debug/ScrollingTextLoggerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/camera/debug/ScrollingTextLoggerView;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/camera/debug/OnScreenLogger;->display$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHIM4TB75T7MSKR3E9IMARICDTJMEPBI4H7MSKR3E9IMARICDTJMEPBI8HKN6S3CC5SJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    .line 38
    :cond_2
    sget-object v0, Lcom/android/camera/debug/OnScreenLogger;->display$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHIM4TB75T7MSKR3E9IMARICDTJMEPBI4H7MSKR3E9IMARICDTJMEPBI8HKN6S3CC5SJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    sget-object v1, Lcom/android/camera/debug/OnScreenLogger;->parent:Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/camera/debug/OnScreenLogger;->display$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHIM4TB75T7MSKR3E9IMARICDTJMEPBI4H7MSKR3E9IMARICDTJMEPBI8HKN6S3CC5SJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static detach()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/android/camera/debug/OnScreenLogger;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 48
    sget-object v1, Lcom/android/camera/debug/OnScreenLogger;->parent:Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/camera/debug/OnScreenLogger;->display$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHIM4TB75T7MSKR3E9IMARICDTJMEPBI4H7MSKR3E9IMARICDTJMEPBI8HKN6S3CC5SJM___:Lcom/android/camera/burst/BurstA11yButtonController$Listener;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    :cond_0
    return-void
.end method
